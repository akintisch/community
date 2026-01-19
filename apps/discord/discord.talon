app: discord
-
tag(): user.messaging
tag(): user.emoji

# Navigation: QuickSwitcher
{user.discord_destination} [<user.text>]:
    user.discord_quick_switcher(user.discord_destination, user.text or "")
switcher: user.discord_quick_switcher("", "")

# Navigation: Custom
workspace next: 
    user.messaging_workspace_next()
workspace prev:
    user.messaging_workspace_previous()
channel next:
    user.messaging_channel_next()
channel prev: 
    user.messaging_channel_previous()
react:
    key("+")
go back:
    key("cmd-[")
go forward:
    key("cmd-]")
shortcuts help:
    key("cmd-/")

# Navigation: Channels
[channel] mentions last: user.discord_mentions_last()
[channel] mentions next: user.discord_mentions_next()
oldest unread: user.discord_oldest_unread()
current call: user.discord_go_current_call()

# UI
toggle pins: user.discord_toggle_pins()
toggle inbox: user.discord_toggle_inbox()
toggle (members | member list): user.discord_toggle_members()
toggle (dee ems | dims): user.discord_toggle_dms()
pick emoji: user.discord_emoji_picker()
pick (jif | gif | gift): user.discord_gif_picker()
pick sticker: user.discord_sticker_picker()

# Misc
mark inbox channel read: user.discord_mark_inbox_read()
[toggle] (mute | unmute): user.discord_mute()
(mute | unmute) and sleep:
    user.discord_mute()
    speech.disable()
[toggle] (deafen | undeafen): user.discord_deafen()
answer call: user.discord_answer_call()
decline call: user.discord_decline_call()
