foreach ($item in $args) {
	if (Test-Path $item) {
		# ���݂���ꍇ (�t�@�C���̍X�V������ύX)
		Set-ItemProperty -Path $item -Name LastWriteTime -Value $(Get-Date)
	}
	else {
		# ���݂��Ȃ��ꍇ (�t�@�C�����쐬)
		New-Item -Type File "$item"
	}
}
