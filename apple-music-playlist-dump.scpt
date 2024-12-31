tell application "Music"
	set thePlaylist to (choose file name default location (path to desktop)) as string
	set thePlaylistItems to every track of playlist "Car Singing 2024"
	set theOutputFile to (POSIX path of (thePlaylist & ".txt"))
	set theOutput to open for access theOutputFile with write permission
	
	repeat with thisTrack in thePlaylistItems
		set theTrackName to name of thisTrack
		set theArtistName to artist of thisTrack
		set theAlbumName to album of thisTrack
		write (theArtistName & " - " & theTrackName & " (" & theAlbumName & ")" & linefeed) to theOutput
	end repeat
	
	close access theOutput
end tell
