'use client'

import { Participant, supabase } from '@/types/types'
import { on } from 'events'
import { FormEvent, useEffect, useState } from 'react'
import '../../globals.css'

export default function Lobby({
  gameId,
  onRegisterCompleted,
}: {
  gameId: string
  onRegisterCompleted: (participant: Participant) => void
}) {
  const [participant, setParticipant] = useState<Participant | null>(null)

  useEffect(() => {
    const fetchParticipant = async () => {
      let userId: string | null = null

      const { data: sessionData, error: sessionError } =
        await supabase.auth.getSession()

      if (sessionData.session) {
        userId = sessionData.session?.user.id ?? null
      } else {
        const { data, error } = await supabase.auth.signInAnonymously()
        if (error) console.error(error)
        userId = data?.user?.id ?? null
      }

      if (!userId) {
        return
      }

      const { data: participantData, error } = await supabase
        .from('participants')
        .select()
        .eq('game_id', gameId)
        .eq('user_id', userId)
        .maybeSingle()

      if (error) {
        return alert(error.message)
      }

      if (participantData) {
        setParticipant(participantData)
        onRegisterCompleted(participantData)
      }
    }

    fetchParticipant()
  }, [gameId, onRegisterCompleted])

  return (
    <main className="flex justify-center items-center min-h-screen bg-navy">
      <div className="bg-black p-12">
        {!participant && (
          <Register
            gameId={gameId}
            onRegisterCompleted={(participant) => {
              onRegisterCompleted(participant)
              setParticipant(participant)
            }}
          />
        )}

        {participant && (
          <div className="text-white max-w-md">
            <h1 className="text-xl pb-4">Welcome {participant.nickname}！</h1>
            <p>
              You have been registered and your nickname should show up on the
              admin screen. Please sit back and wait until the game master
              starts the game.
            </p>
          </div>
        )}
      </div>
    </main>
  )
}

function Register({
  onRegisterCompleted,
  gameId,
}: {
  onRegisterCompleted: (player: Participant) => void
  gameId: string
}) {
  const onFormSubmit = async (e: FormEvent<HTMLFormElement>) => {
    e.preventDefault()
    setSending(true)

    if (!nickname) {
      setSending(false)
      return
    }

    // 1. Upewnij się, że masz user_id
    let userId: string | null = null
    const { data: sessionData } = await supabase.auth.getSession()
    if (sessionData.session) {
      userId = sessionData.session.user.id
    } else {
      const { data, error: anonErr } = await supabase.auth.signInAnonymously()
      if (anonErr) {
        setSending(false)
        return alert(anonErr.message)
      }
      userId = data?.user?.id ?? null
    }
    if (!userId) {
      setSending(false)
      return alert('Could not get user ID')
    }

    // 2. Wrzuć record z user_id
    const { data: participant, error } = await supabase
      .from('participants')
      .insert({ nickname, game_id: gameId, user_id: userId })
      .select()
      .single()

    if (error) {
      setSending(false)
      // Check if this is a unique constraint violation for nickname
      if (error.message.includes("participants_nickname_key")) {
        return alert("THIS NICKNAME IS ALREADY TAKEN. PLEASE TRY ANOTHER ONE.")
      }
      // For other errors, show the default message
      return alert(error.message)
    }

    onRegisterCompleted(participant)
  }

  const [nickname, setNickname] = useState('')
  const [sending, setSending] = useState(false)

  return (
    <form onSubmit={(e) => onFormSubmit(e)}>
      <input
        className="p-2 w-full border border-black text-black"
        type="text"
        onChange={(val) => setNickname(val.currentTarget.value)}
        placeholder="Nickname"
        maxLength={20}
      />
      <button disabled={sending} className="w-full py-2 bg-green-500 mt-4">
        Join
      </button>
    </form>
  )
}
