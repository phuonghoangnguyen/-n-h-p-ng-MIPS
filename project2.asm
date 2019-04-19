.data 
	time: .space 100
	time0: .space 100
	
	getInputMsg1: .asciiz "\nNhap ngay Day: "
	getInputMsg2: .asciiz "\nNhap thang Month: "
	getInputMsg3: .asciiz "\nNhap nam Year: "
	getInputMsg4: .asciiz "\n\nDu lieu khong hop le, vui long nhap lai:\n"
	
	giap: .asciiz "Giap "
	at: .asciiz "At "
	binh: .asciiz "Binh "
	dinh: .asciiz "Dinh "
	mau: .asciiz "Mau "
	ki: .asciiz "Ki "
	canh: .asciiz "Canh "
	tan: .asciiz "Tan "
	nham: .asciiz "Nham "
	quy: .asciiz "Quy "
	
	can: .word giap, at, binh, dinh, mau, ki, canh, tan, nham, quy
	
	ti: .asciiz "Ti"
	suu: .asciiz "Suu"
	dan: .asciiz "Dan"
	meo: .asciiz "Meo"
	thin: .asciiz "Thin"
	ty: .asciiz "Ty"
	ngo: .asciiz "Ngo"
	mao: .asciiz "Mao"
	than: .asciiz "Than"
	dau: .asciiz "Dau"
	tuat: .asciiz "Tuat"
	hoi: .asciiz "Hoi"
	
	chi: .word ti, suu, dan, meo, thin, ty, ngo, mao, than, dau, tuat, hoi
	
	thu2: .asciiz "thu hai"
	thu3: .asciiz "thu ba"
	thu4: .asciiz "thu tu"
	thu5: .asciiz "thu nam"
	thu6: .asciiz "thu sau"
	thu7: .asciiz "thu bay"
	cn: .asciiz "chu nhat"
	
	thu: .word thu2, thu3, thu4, thu5, thu6, thu7, cn
	
	January: .asciiz  "January"
	February: .asciiz  "February"
	March: .asciiz  "March"
	April: .asciiz  "April"
	May: .asciiz  "May"
	June: .asciiz  "June"
	July: .asciiz  "July"
	August: .asciiz  "August"
	Septemper: .asciiz  "Septemper"
	October: .asciiz  "October"
	November: .asciiz  "November"
	December: .asciiz  "December"
	
	Months: .word January, February, March, April, May, June, July, August, Septemper, October, November, December

	fileIn: .asciiz "Input.txt"
	fileOut: .asciiz "Output.txt"
	buffer_1: .space 100
	buffer_2: .space 100		
	khongHopLe1: .asciiz "Chuoi Time_1 khong hop le"
	khongHopLe2: .asciiz "Chuoi Time_2 khong hop le"
	khongHopLe3: .asciiz "Chuoi Time_1 va Time_2 khong hop le"
	q1: .asciiz "1. "
	q2a: .asciiz "\n2A. "
	q2b: .asciiz "\n2B. "
	q2c: .asciiz "\n2C. "
	q3: .asciiz "\n3. "
	q4: .asciiz "\n4. "
	q5: .asciiz "\n5. Khoang cach tu ngay 01/01/0001 den ngay "
	q6: .asciiz "\n6. "
	q7: .asciiz "\n7. Khoang cach tu ngay "
	q8: .asciiz "\n8. Hai nam nhuan gan voi "
	tbNamThuong: .asciiz " La Nam Thuong"
	tbNamNhuan: .asciiz " La Nam Nhuan"
	La: .asciiz " la "
	denNgay: .asciiz " den ngay "
	ngay: .asciiz " ngay"
	va: .asciiz " va "
	nhatLa: .asciiz " nhat la "	

	TrueMsg: .asciiz "TRUE"
	FalseMsg: .asciiz "FALSE"
	
	ConvertMsg: .asciiz "\nNhap dinh dang: "
	ContinueMsg: .asciiz "\nBan co muon tiep tuc? (Y: tiep tuc, con lai: khong) "

	newLine: .asciiz "\n"
	space: .asciiz " "	

	yeu_cau_chon: .asciiz "\n--------------------Ban hay chon 1 trong cac thao tac duoi day----------------------\n"
	yeu_cau_1: .asciiz "1. Xuat chuoi TIME theo dinh dang DD/MM/YYYY\n"
	yeu_cau_2: .asciiz "2. Xuat chuoi TIME thanh mot trong cac dinh dang sau\n"
	yeu_cau_2.1: .asciiz "    A. DD/MM/YYYY\n"
	yeu_cau_2.2: .asciiz "    B. Month DD, YYYY\n"
	yeu_cau_2.3: .asciiz "    C. DD Month, YYYY\n"
	yeu_cau_3: .asciiz "3. Kiem tra nam trong chuoi TIME co phai la nam nhuan khong\n"
	yeu_cau_4: .asciiz "4. Cho biet ngay vua nhap la thu may trong tuan\n"
	yeu_cau_5: .asciiz "5. Cho biet ngay vua nhap la ngay thu may ke tu ngay 1/1/1\n"
	yeu_cau_6: .asciiz "6. cho biet can chi cua nam vua nhap\n"
	yeu_cau_7: .asciiz "7. cho biet khoang thoi gian gia chuoi TIME_1 va TIME_2\n"
	yeu_cau_7.nhapTime_2: .asciiz "\nNhap Time_2:"
	yeu_cau_8: .asciiz "8. cho biet 2 nam nhuan gan nhat voi nam trong chuoi time\n"
	yeu_cau_9: .asciiz "9. nhap input tu file input.txt xuat ket qua toan bo cac chuc nang tren ra file output.txt\n"
	line: .asciiz      "-----------------------------------------------------------------------------------------\n"
	luaChon: .asciiz "Lua chon: "
	ketQua: .asciiz "Ket qua: "
	luaChonkhongHopLe: .asciiz "Lua chon khong hop le, vui long nhap lai!!!\n" 
.text 
	main:
		la $a0, time
		jal getTimeInput

		main.Start:
		#xuat bang yeu cau
		li $v0, 4
		la $a0, yeu_cau_chon
		syscall
		
		li $v0, 4
		la $a0, yeu_cau_1
		syscall

		li $v0, 4
		la $a0, yeu_cau_2
		syscall
	
		li $v0, 4
		la $a0, yeu_cau_2.1
		syscall

		li $v0, 4
		la $a0, yeu_cau_2.2
		syscall

		li $v0, 4
		la $a0, yeu_cau_2.3
		syscall

		li $v0, 4
		la $a0, yeu_cau_3
		syscall

		li $v0, 4
		la $a0, yeu_cau_4
		syscall

		li $v0, 4
		la $a0, yeu_cau_5
		syscall

		li $v0, 4
		la $a0, yeu_cau_6
		syscall

		li $v0, 4
		la $a0, yeu_cau_7
		syscall

		li $v0, 4
		la $a0, yeu_cau_8
		syscall
		
		li $v0, 4
		la $a0, yeu_cau_9
		syscall
		
		li $v0, 4
		la $a0, line
		syscall		

		li $v0, 4
		la $a0, luaChon
		syscall
		
		li $v0, 12
		syscall
		move $a1, $v0

		li $v0, 4
		la $a0, newLine	
		syscall 		

		beq $a1, '1', Cau1
		beq $a1, '2', Cau2
		beq $a1, '3', Cau3
		beq $a1, '4', Cau4
		beq $a1, '5', Cau5
		beq $a1, '6', Cau6
		beq $a1, '7', Cau7
		beq $a1, '8', Cau8
		beq $a1, '9', Cau9
		
	Cau1: 
		li $v0, 4
		la $a0, ketQua
		syscall

		la $a0,time
		jal Date
			
		j main.Continue
	Cau2:
		li $v0, 4
		la $a0, ConvertMsg
		syscall

		li $v0, 12
		syscall
		move $a2, $v0
		la $a1, time0
		la $a0, time
		jal Convert
		
		li $v0, 4
		la $a0, newLine
		syscall		
		
		li $v0, 4
		la $a0, ketQua
		syscall

		move $a0, $a1
		li $v0, 4
		syscall
	
		j main.Continue
		
	Cau3:
		la $a0, time
		jal Year
		move $a0, $v0
		
		jal isLeapYear
		move $s0, $v0
		
		li $v0, 4
		la $a0, ketQua
		syscall		

		bne $s0, 0, Cau3.True
		li $v0, 4
		la $a0, FalseMsg
		syscall
		j main.Continue
		Cau3.True:
			li $v0, 4
			la $a0, TrueMsg
			syscall
		j main.Continue
		
	Cau4:
		li $v0, 4
		la $a0, ketQua
		syscall

		la $a0, time
		jal Weekday

		move $a0, $v0
		li $v0, 4
		syscall 
		j main.Continue
	Cau5:	
		li $v0, 4
		la $a0, ketQua
		syscall

		la $a0, time
		jal daysFrom_1.1.1
		move $a0, $v0
		
		li $v0, 1
		syscall
		j main.Continue
	Cau6:
		li $v0, 4
		la $a0, ketQua
		syscall

		la $a0, time
		jal CanChi

		move $a0, $v0
		li $v0, 4
		syscall 
		
		move $a0, $v1
		li $v0, 4
		syscall
		
		j main.Continue		

	Cau7:
		li $v0, 4
		la $a0, yeu_cau_7.nhapTime_2
		syscall

		la $a0, time0
		jal getTimeInput
		
		li $v0, 4
		la $a0, ketQua
		syscall		

		la $a1, time0
		la $a0, time
		jal DayDiff
		move $a0, $v0
		
		li $v0, 1
		syscall
		j main.Continue
	Cau8:
		li $v0, 4
		la $a0, ketQua
		syscall

		la $a0, time
		jal NearestLeapYears
		move $a0, $v0
		li $v0, 1
		syscall
		
		li $v0, 4
		la $a0, space
		syscall
	
		move $a0, $v1
		li $v0, 1
		syscall
		
		j main.Continue
	Cau9:
		la $a0, buffer_1
		la $a1, buffer_2
		jal file_manipulate

		j main.Continue

		main.Continue:
			li $v0, 4
			la $a0, ContinueMsg
			syscall 
	
			li $v0, 12
			syscall
		
			beq $v0, 'Y', main.Start
			beq $v0, 'y', main.Start

			# exit
			li $v0, 10
			syscall 
		
	# function to get a time-type input
	# argument: $a0: Time(String)
	getTimeInput: 
		subu $sp, $sp, 16
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		
		getTimeInput.start:
		sw $a0, 4($sp)
		
		# t0 = a0
		la $t0, ($a0)
		
		# print getInputMsg1
		li $v0, 4
		la $a0, getInputMsg1
		syscall 
		
		# get day of month
		la $a0, ($t0)
		jal getLine
		
		jal getLength
		la $t1, ($v0)
		
		add $a0, $a0, $t1
		li $t0, '/'
		sb $t0, ($a0)
		addi $a0, $a0, 1
		
		# t0 = a0
		la $t0, ($a0)
		
		# print getInputMsg2
		li $v0, 4
		la $a0, getInputMsg2
		syscall 
		
		# get month
		la $a0, ($t0)
		jal getLine
		
		jal getLength
		la $t1, ($v0)
		
		add $a0, $a0, $t1
		li $t0, '/'
		sb $t0, ($a0)
		addi $a0, $a0, 1
		
		# t0 = a0
		la $t0, ($a0)
		
		# print getInputMsg3
		li $v0, 4
		la $a0, getInputMsg3
		syscall 
		
		# get year
		la $a0, ($t0)
		jal getLine
		
		jal getLength
		la $t1, ($v0)
		
		lw $a0, 4($sp)
		jal isValid
		beq $v0, 1, getTimeInput.end
		
		# t0 = a0
		la $t0, ($a0)
		
		# print getInputMsg4
		li $v0, 4
		la $a0, getInputMsg4
		syscall
		
		# a0 = t0 
		la $a0, ($t0)
		
		j getTimeInput.start
		
		
		getTimeInput.end:
		lw $t1, 12($sp)
		lw $t0, 8($sp)
		lw $a0, 4($sp)
		lw $ra, 0($sp)
		addu $sp, $sp, 16
		jr $ra
	
	# function to return time form: "dd/mm/yyyy"
	# argument: $a0: time
	Date:
		subu $sp, $sp, 20
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $s0, 12($sp)
		sw $t0, 16($sp)
		
		la $s0, ($a0)
		
		jal Day
		la $t0, ($v0)
		bge $t0, 10, Date.printDay
		
		li $v0, 1
		li $a0, 0
		syscall
		
		Date.printDay:
		la $a0, ($t0)
		li $v0, 1
		syscall 
		
		li $v0, 11 
		li $a0, '/'
		syscall
		
		la $a0, ($s0)
		jal Month
		la $t0, ($v0)
		bge $t0, 10, Date.printMonth
		
		li $v0, 1
		li $a0, 0
		syscall
		
		Date.printMonth:		
		la $a0, ($t0)
		li $v0, 1
		syscall 
		
		li $v0, 11 
		li $a0, '/'
		syscall
		
		la $a0, ($s0)
		jal Year
		la $a0, ($v0)
		li $v0, 1
		syscall 
		
		# return
		la $v0, ($s0)
		
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $t0, 8($sp)
		lw $s0, 12($sp)
		lw $t0, 16($sp)
		addu $sp, $sp, 20
		jr $ra
	
	# function to display time 
	# argument: $a0: Time
	printTime:
		subu $sp, $sp, 4
		sw $ra, 0($sp)
		
		li $v0, 4
		syscall 
		
		lw $ra, 0($sp)
		addu $sp, $sp, 4
	
	# function to get line
	# argument: $a0: string
	getLine:
		subu $sp, $sp, 16
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		
		# count = 0
		li $t1, 0
		
		getLine.loop:
			li $v0, 12
			syscall 
			sb $v0, ($a0)
			addi $a0, $a0, 1
			addi $t1, $t1, 1
		
		# do getLine.Loop while $v0 != \n
		bne $v0, '\n', getLine.loop
		subi $a0, $a0, 1

		li $t0, '\0'
		sb $t0, ($a0)
	
		lw $t1, 12($sp)
		lw $t0, 8($sp)
		lw $a0, 4($sp)					
		lw $ra, 0($sp)
		addu $sp, $sp, 16
		jr $ra
	
	# function to get length of a string
	# argument: $a0: string
	# return $v0: length
	getLength:
		subu $sp, $sp, 20
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		sw $s0, 16($sp)
		 
		la $s0, ($a0)
		# count = 0
		li $t1, 0
		
		getLength.loop:		
			lb $t0, ($s0)
			addi $s0, $s0, 1
			addi $t1, $t1, 1
		bne  $t0, '\0', getLength.loop
		
		subi $t1, $t1, 1
		la $v0, ($t1)
		
		lw $s0, 16($sp)
		lw $t1, 12($sp)
		lw $t0, 8($sp)
		lw $a0, 4($sp)
		lw $ra, 0($sp)
		addu $sp, $sp, 20
		jr $ra
	
	# function to get year of a time-type
	# argument: $a0: string
	# return $v0: int
	Year: 
		subu $sp, $sp, 20
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		sw $t2, 16($sp)

		# count = 0
		li $t1, 0
		
		Year.loop:
			lb $t0, ($a0)
			addi $a0, $a0, 1
			bne $t0, '/', Year.loop
			addi $t1, $t1, 1
			bne $t1, 2, Year.loop
		
		# result = 0
		li $v0, 0	
		li $t1, 0
		
		Year.loop1:
			lb $t0, ($a0)
			bge $t1, 4, Year.end
			beq $t0, '\0', Year.end
			addi $a0, $a0, 1
			addi $t1, $t1, 1
			subi $t0, $t0, '0'
			li $t2, 10
			mul $v0, $v0, $t2
			add $v0, $v0, $t0
			j Year.loop1
			
		Year.end:
		lw $t0, 8($sp)
		lw $a0, 4($sp)
		lw $ra, 0($sp)
		lw $t1, 12($sp)
		lw $t2, 16($sp)
		addu $sp, $sp, 20
		jr $ra
		
	
	# function to get month of a time-type
	# argument: $a0: string
	# return $v0: int
	Month: 
		subu $sp, $sp, 20
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		sw $t2, 16($sp)

		# count = 0
		li $t1, 0
		
		Month.loop:
			lb $t0, ($a0)
			addi $a0, $a0, 1
			bne $t0, '/', Month.loop
			addi $t1, $t1, 1
			bne $t1, 1, Month.loop
		
		# result = 0
		li $v0, 0
		Month.loop1:
			lb $t0, ($a0)
			beq $t0, '/', Month.end
			addi $a0, $a0, 1
			subi $t0, $t0, '0'

			
			li $t2, 10
			mul $v0, $v0, $t2
			add $v0, $v0, $t0
			j Month.loop1
			
		Month.end:
		lw $t2, 16($sp)
		lw $t1, 12($sp)
		lw $t0, 8($sp)
		lw $a0, 4($sp)
		lw $ra, 0($sp)
		addu $sp, $sp, 20
		jr $ra
		
	# function to get day-of-month of a time-type
	# argument: $a0: string
	# return $v0: int
	Day: 
		subu $sp, $sp, 20
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		sw $t2, 16($sp)

		# count = 0
		li $t1, 0
		
		# result = 0
		li $v0, 0
		Day.loop:
			lb $t0, ($a0)
			beq $t0, '/', Day.end
			addi $a0, $a0, 1
			subi $t0, $t0, '0'
			li $t2, 10
			mul $v0, $v0, $t2
			add $v0, $v0, $t0
			j Day.loop
			
		Day.end:
		lw $t2, 16($sp)
		lw $t1, 12($sp)
		lw $t0, 8($sp)
		lw $a0, 4($sp)
		lw $ra, 0($sp)
		addu $sp, $sp, 20
		jr $ra
	
	# check if a time-type is valid
	# arguments: $a0: time
	# return $v0 (1: true, 0: false)
	isValid:
		subu $sp, $sp, 32
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $s1, 12($sp)
		sw $s2, 16($sp)
		sw $s3, 20($sp)
		sw $s0, 24($sp)
		sw $t2, 28($sp)		

		la $s0, ($a0)
		
		findDate:
			# date = 0
			li $s1, 0
			findDate.loop:
				lb $t0, ($a0)
				beq $t0, '/', findMonth
				blt $t0, '0', isValid.returnFalse
				bgt $t0, '9', isValid.returnFalse
				addi $a0, $a0, 1
				subi $t0, $t0, '0'
				li $t2, 10
				mul $s1, $s1, $t2
				add $s1, $s1, $t0
				j findDate.loop
		findMonth:
			# month = 0
			li $s2, 0
			addi $a0, $a0, 1
			
			findMonth.loop:
				lb $t0, ($a0)
				beq $t0, '/', findYear
				blt $t0, '0', isValid.returnFalse
				bgt $t0, '9', isValid.returnFalse
				addi $a0, $a0, 1
				subi $t0, $t0, '0'
				li $t2, 10
				mul $s2, $s2, $t2
				add $s2, $s2, $t0
				j findMonth.loop
		findYear:
			# year = 0
			li $s3, 0
			addi $a0, $a0, 1
			
			li $t1, 0
			findYear.loop:
				lb $t0, ($a0)
				bge $t1, 4, isValid.checkTime
				beq $t0, '\0', isValid.checkTime
				blt $t0, '0', isValid.returnFalse
				bgt $t0, '9', isValid.returnFalse
				subi $t0, $t0, '0'
				li $t2, 10
				mult $s3, $t2
				mflo $s3
				add $s3, $s3, $t0
				addi $a0, $a0, 1
				addi $t1, $t1, 1
				j findYear.loop
		
		isValid.checkTime:
			addi $t0, $a0, 1
			lb $t0, ($t0)
			bne $t0, '\0', isValid.returnFalse			

			# if date < 1 || month < 1 || year < 1900 || if month > 12 then return false
			blt $s1, 1, isValid.returnFalse
			blt $s2, 1, isValid.returnFalse
			blt $s3, 1900, isValid.returnFalse
			bgt $s2, 12, isValid.returnFalse
			
			# if month == 2
			#	if LeapYear(year):
			# 		if date > 29:
			#			return false
			#	else:
			#		if date > 28
			#			return false
			bne $s2, 2, isValid.MonthIsNot2
			la $a0, ($s0)
			jal LeapYear
			bne $v0, 1, isValid.IsNotLeapYear
			bgt $s1, 29, isValid.returnFalse
			j isValid.returnTrue
			isValid.IsNotLeapYear:
				bgt $s1, 28, isValid.returnFalse
				j isValid.returnTrue
				
			isValid.MonthIsNot2:
			blt $s2, 8, isValid.checkTime.ifMonthLessThan8
			# if month >= 8:
			# 	if month % 2 == 0:
			#	    if date > 31: return false
			#	else:
			# 	    if date > 30:
			# 		return false
			li $t0, 2
			div $s2, $t0
			mfhi $t0
			bne $t0, 0, isValid.ifMonthOdd
			bgt $s1, 31, isValid.returnFalse
			j isValid.returnTrue
			
			isValid.ifMonthOdd:
				bgt $s1, 30, isValid.returnFalse
				j isValid.returnTrue
			
			isValid.checkTime.ifMonthLessThan8:
			# if month < 8:
			# 	if month % 2 != 0:
			#	    if date > 31: return false
			#	else:
			# 	    if date > 30:
			# 		return false
				li $t0, 2
				div $s2, $t0
				mfhi $t0
				bne $t0, 0, isValid.checkTime.ifMonthLessThan8.ifMonthOdd
				bgt $s1, 30, isValid.returnFalse
				j isValid.returnTrue	
				
				isValid.checkTime.ifMonthLessThan8.ifMonthOdd:
					bgt $s1, 31, isValid.returnFalse
					j isValid.returnTrue
		isValid.returnFalse:
			li $v0, 0
			j isValid.end
		isValid.returnTrue:
			li $v0, 1
			
		isValid.end:
		lw $t2, 28($sp)		
		lw $s0, 24($sp)
		lw $s3, 20($sp)
		lw $s2, 16($sp)
		lw $s1, 12($sp)
		lw $t0, 8($sp)
		lw $a0, 4($sp)
		lw $ra, 0($sp)
		addu $sp, $sp, 32
		jr $ra

	# function to check if a year is a leap year
	# argument: $a0: year(Int) 
	# return $v0 (0: false, 1: true)
	isLeapYear:
		addi $sp, $sp, -12
		sw $ra, ($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		
		li $t0, 400
		div $a0, $t0
		mfhi $t0
		beq $t0, 0, isLeapYear.ReturnTrue
		
		li $t0, 100
		div $a0, $t0
		mfhi $t0
		beq $t0, 0, isLeapYear.ReturnFalse
		
		li $t0, 4
		div $a0, $t0
		mfhi $t0
		beq $t0, 0, isLeapYear.ReturnTrue
		
	isLeapYear.ReturnFalse:
		li $v0,0
		j isLeapYear.end
	isLeapYear.ReturnTrue:
		li $v0, 1
		j isLeapYear.end
	isLeapYear.end:
		lw $ra, ($sp)
		lw $a0, 4($sp)
		lw $t0, 8($sp)

		addi $sp, $sp, 12
		jr $ra
	# function to check if the year in Time is a leap year or not
	# argument: $a0: Time(string)
	# return $v0 (0: false, 1: true)
	LeapYear:
		#stack 
		addi $sp, $sp, -8
		sw $ra, ($sp)
		sw $a0, 4($sp)
		
		jal Year
		la $a0, ($v0)
		jal isLeapYear
		
		lw $ra, ($sp)
		lw $a0, 4($sp)
		addi $sp, $sp, 8
		jr $ra
	
	# function to count how many days from 1/1 to Time in the same year
	# argument: $a0: Time
	# return: $v0 (Int)
	# eg: $a0='31/1/2020' => $v0=31 since there are 31 days from 1/1/2020 to 31/1/2020
	daysInYear:
		addi $sp, $sp, -28
		sw $ra, ($sp)
		sw $a0, 4($sp)
		sw $s1, 8($sp)
		sw $s2, 12($sp)
		sw $s0, 16($sp)
		sw $t0, 20($sp)
		sw $t1, 24($sp)
		
		la $s0, ($a0)
		
		jal Day
		la $s1, ($v0)
		
		jal Month
		la $s2, ($v0)
		
		# result = 0
		li $v0, 0
		
		# i = 1
		li $t0, 1
		daysInYear.loop:
			beq $t0, $s2, daysInYear.return
			
			bne $t0, 2, daysInYear.iIsNot2
			la $a0, ($s0)		 # if i == 2
			la $s0, ($v0)
			jal LeapYear		 #	if LeapYear
			bne $v0, 1, daysInYear.IsNotLeapYear # if !LeapYear
			la $v0, ($s0)
			addi $v0, $v0, 29
			j daysInYear.loop.increase
			
			daysInYear.IsNotLeapYear:
				la $v0, ($s0)
				addi $v0, $v0, 28
				j daysInYear.loop.increase
				
			daysInYear.iIsNot2: # if i != 2
				blt $t0, 8, daysInYear.iIsNot2.ifiLessThan8
				# if month >= 8:
				# 	if month % 2 == 0:
				#	    result += 31
				#	else:
				# 	    result += 30
				li $t1, 2
				div $t0, $t1
				mfhi $t1
				bne $t1, 0, daysInYear.ifiOdd
				addi $v0, $v0, 31
				j daysInYear.loop.increase
			
			daysInYear.ifiOdd:
				addi $v0, $v0, 30
				j daysInYear.loop.increase
			
			daysInYear.iIsNot2.ifiLessThan8:
			# if month < 8:
			# 	if month % 2 != 0:
			#	    result += 30
			#	else:
			# 	    result += 31
				li $t1, 2
				div $t0, $t1
				mfhi $t1
				bne $t1, 0, daysInYear.ifiLessThan8.ifiOdd
				addi $v0, $v0, 30
				j daysInYear.loop.increase
				
				daysInYear.ifiLessThan8.ifiOdd:
					addi $v0, $v0, 31
					j daysInYear.loop.increase	
			daysInYear.loop.increase: # i++
				addi $t0, $t0, 1
				j daysInYear.loop
				
		daysInYear.return:
			add $v0, $v0, $s1
			
		lw $ra, ($sp)
		lw $a0, 4($sp)
		lw $s1, 8($sp)
		lw $s2, 12($sp)
		lw $s0, 16($sp)
		lw $t0, 20($sp)
		lw $t1, 24($sp)
		addi $sp, $sp, 28
		jr $ra
	
	# Ham tinh can chi
	# argument: $a0: Time(string)
	# return $v0: Can, $v1: Chi ($v0 = 0, $v1 = 1 => giap suu)
	CanChi:
		subu $sp, $sp, 24
		sw $ra, 0($sp)
		sw $s0, 4($sp)
		sw $t1, 8($sp)
		sw $s1, 12($sp)
		sw $s2, 16($sp)
		sw $t2, 20($sp)

		jal Year
		move $s0,$v0
		addi $s1,$s0,6
		li $s2,10
		div $s1,$s2
		mfhi $s1	#s1 luu dia chi(chi so) cua can
		li $t2, 4
		mul $s1, $s1, $t2
		lw $v0, can($s1)
		
		addi $t1,$s0,8
		li $t2,12
		div $t1,$t2
		mfhi $t1		#t1 luu dia chi(chi so) cua chi
		li $t2, 4
		mul $t1, $t1, $t2
		lw $v1, chi($t1)

		lw $t2, 20($sp)
		lw $s0, 4($sp)
		lw $t1, 8($sp)
		lw $s1, 12($sp)
		lw $s2, 16($sp)
		lw $ra, 0($sp)
		addu $sp, $sp, 24
		jr $ra
	
	# function to calculate 2 closest leap years to Time
	# argument $a0: Time
	# return $v0: year1, $v1: year2 
	NearestLeapYears:
		addi $sp, $sp, -24
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t0, 8($sp)
		sw $t1, 12($sp)
		sw $s0, 16($sp)
		sw $s1, 20($sp)
		
		jal Year
		la $s1, ($v0) # s1 = year
		
		li $s0, 0 # count = 0
		li $t0, 1 # i = 1
		
		NearestLeapYears.loop:
		beq $s0, 2, NearestLeapYears.end
		
		add $t1, $s1, $t0
		la $a0, ($t1)
		jal isLeapYear
		bne $v0, 1, NearestLeapYears.loop.checkPreYear
		addi $s0, $s0, 1
		move $v0, $v1
		move $v1, $t1
		j NearestLeapYears.loop.increase
		
		NearestLeapYears.loop.checkPreYear:
		sub $t1, $s1, $t0
		la $a0, ($t1)
		jal isLeapYear
		bne $v0, 1, NearestLeapYears.loop.increase
		addi $s0, $s0, 1
		move $v0, $v1
		move $v1, $t1
		j NearestLeapYears.loop.increase
		
		NearestLeapYears.loop.increase:
		addi $t0, $t0, 1
		j NearestLeapYears.loop
		
		NearestLeapYears.end:
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $t0, 8($sp)
		lw $t1, 12($sp)
		lw $s0, 16($sp)
		lw $s1, 20($sp)
		addi $sp, $sp, 24
		jr $ra
	
	# function to compare two time-types
	# argument $a0: Time1, $a1: Time2
	# return $v0(-1: $a0 < $a1, 0: $a0 = $a1, 1: $a0 > $a1)
	timeCmp:
		addi $sp, $sp, -24
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $a1, 8($sp)
		sw $s0, 12($sp)
		sw $t0, 16($sp)
		sw $t1, 20($sp)
	  	
	  	jal Year
	  	la $t0, ($v0) # t0 = year1
	  	
	 	la $s0, ($a0)
	 	la $a0, ($a1)
	 	jal Year
	  	la $t1, ($v0) # t1 = year2
	  	la $a0, ($s0)
	  	
	  	beq $t0, $t1, timeCmp.cmpMonth # if t1 = t2: goto cmpMonth
	  	bgt $t0, $t1, timeCmp.returnGreater
	  	j timeCmp.returnLessThan
	  	
	  	timeCmp.cmpMonth:
	  	jal Month
	  	la $t0, ($v0) # t0 = month1
	  	
	 	la $s0, ($a0)
	 	la $a0, ($a1)
	 	jal Month
	  	la $t1, ($v0) # t1 = month2
	  	la $a0, ($s0)
	  	
	  	beq $t0, $t1, timeCmp.cmpDay # if t1 = t2: goto cmpDay
	  	bgt $t0, $t1, timeCmp.returnGreater
	  	j timeCmp.returnLessThan
	  	
	  	timeCmp.cmpDay:
	  	jal Day
	  	la $t0, ($v0) # t0 = day1
	  	
	 	la $s0, ($a0)
	 	la $a0, ($a1)
	 	jal Day
	  	la $t1, ($v0) # t1 = day2
	  	la $a0, ($s0)
	  	
	  	beq $t0, $t1, timeCmp.returnEqual # if t1 = t2: return 0
	  	bgt $t0, $t1, timeCmp.returnGreater
	  	j timeCmp.returnLessThan
	  	
	  	timeCmp.returnEqual:
	  	li $v0, 0
	  	j timeCmp.end
	  	
	  	timeCmp.returnGreater:
	  	li $v0, 1
	  	j timeCmp.end
	  	
	  	timeCmp.returnLessThan:
	  	li $v0, -1
	  	
	  	timeCmp.end:
	  	lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		lw $s0, 12($sp)
		lw $t0, 16($sp)
		lw $t1, 20($sp)
		addi $sp, $sp, 24
		jr $ra
	
	# function to calculate how many days bewteen Time1 and Time2
	# argument $a0: Time1, $a1: Time2
	# return $v0(Int)
	DayDiff:
		addi $sp, $sp, -32
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $a1, 8($sp)
		sw $s0, 12($sp)
		sw $t0, 16($sp)
		sw $t1, 20($sp)
		sw $t2, 24($sp)
		sw $s1, 28($sp)
		
		jal timeCmp
		bne $v0, 1, DayDiff.start
		
		move $t0, $a0 # swap(a0, a1)
		move $a0, $a1
		move $a1, $t0
		
		DayDiff.start:
		jal Year
		la $t0, ($v0) # t0 = year1
	  	
	 	la $s0, ($a0)
	 	la $a0, ($a1)
	 	jal Year
	  	la $t1, ($v0) # t1 = year2
	  	la $a0, ($s0)
		
		li $s1, 0 # result = 0
	
		DayDiff.loop:
		beq $t0, $t1, DayDiff.return
		
		la $s0, ($a0)
		la $a0, ($t0)
		jal isLeapYear
		la $a0, ($s0)

		beq $v0, 1, DayDiff.add366
		addi $s1, $s1, 365
		j DayDiff.loop.increase
		
		DayDiff.add366:
		addi $s1, $s1, 366
		
		DayDiff.loop.increase:
		add $t0, $t0, 1
		j DayDiff.loop
		
		DayDiff.return:
		jal daysInYear
		la $t0, ($v0)
		
		la $a0, ($a1)
		jal daysInYear
		la $t1, ($v0)
		
		la $v0, ($s1) 
		
		sub $t0, $t1, $t0
		add $v0, $v0, $t0
		
		DayDiff.end:
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		lw $s0, 12($sp)
		lw $t0, 16($sp)
		lw $t1, 20($sp)
		lw $t2, 24($sp)
		lw $s1, 28($sp)
		addi $sp, $sp, 32
		jr $ra
	
	# funciton to calculate how many days from 1/1/1 t o Time
	# argument $a0 : Time
	# return $v0(Int)
	daysFrom_1.1.1:
		addi $sp, $sp, -20
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t1, 8($sp)
		sw $s0, 12($sp)
		sw $t0, 16($sp)
		
		jal Year
		la $t1, ($v0)
		
		jal daysInYear
		la $s0, ($v0)
		
		li $t0, 1
		daysFrom_1.1.1.loop:
			beq $t0, $t1, daysFrom_1.1.1.return
			la $a0, ($t0)
			jal isLeapYear
			beq $v0, 1, daysFrom_1.1.1.add366
			addi $s0, $s0, 365
			j daysFrom_1.1.1.increase
			
			daysFrom_1.1.1.add366:
			addi $s0, $s0, 366
			
		daysFrom_1.1.1.increase:
			addi $t0, $t0, 1
			j daysFrom_1.1.1.loop
		
		daysFrom_1.1.1.return:
		la $v0, ($s0)
		subi $v0, $v0, 1
		
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $t1, 8($sp)
		lw $s0, 12($sp)
		lw $t0, 16($sp)
		addi $sp, $sp, 20
		jr $ra
		
	# function to get what day of week Time is
	# argument $a0: Time
	# return $v0(String)
	Weekday:
		addi $sp, $sp, -24
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $t1, 8($sp)
		sw $s0, 12($sp)
		sw $t0, 16($sp)
		sw $t2, 20($sp)

		jal Year
		la $t1, ($v0)
		
		jal daysInYear
		la $s0, ($v0)
		subi $s0, $s0, 1
		
		li $t0, 1900
		
		Weekday.loop:
			beq $t0, $t1, Weekday.return
			la $a0, ($t0)
			jal isLeapYear
			beq $v0, 1, Weekday.add366
			addi $s0, $s0, 365
			j Weekday.increase
			
			Weekday.add366:
			addi $s0, $s0, 366
			
		Weekday.increase:
			addi $t0, $t0, 1
			j Weekday.loop
		
		Weekday.return:
		li $t0, 7
		div $s0, $t0
		mfhi $s0
		li $t2, 4
		mul $s0, $s0, $t2
		lw $v0, thu($s0)
		
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $t1, 8($sp)
		lw $s0, 12($sp)
		lw $t0, 16($sp)
		lw $t2, 20($sp)
		addi $sp, $sp, 24
		jr $ra
		
	# function to convert Time into 3 types(A: dd/mm/yyyy, B: Month dd, yyyy, C: dd Month, yyyy)
	# argument $a0: Time(String), $a1: Destination(String), $a2: Type(Char)
	# return $v0: Time after converting
	Convert:
		addi $sp, $sp, -32
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $a1, 8($sp)
		sw $a2, 12($sp)
		sw $t0, 16($sp)
		sw $s0, 20($sp)
		sw $t1, 24($sp)
		sw $t2, 28($sp)

		beq $a2, 'a', Convert.typeA
		beq $a2, 'A', Convert.typeA
		beq $a2, 'b', Convert.typeB
		beq $a2, 'B', Convert.typeB
		beq $a2, 'c', Convert.typeC
		beq $a2, 'C', Convert.typeC
		
		#Convert to Type A: MM/DD/YYYY
		Convert.typeA:
			Convert.typeA.month:

			jal Month
			la $s0, ($v0)        # s0 = month
		
			li $t1, 100 # 10^(how many digits in month)
			bge $s0, 9, Convert.typeA.month.loop
		
			li $t0, '0'          # if day <= 9: a1 += '0'
			sb $t0, ($a1)
			addi $a1, $a1, 1
			li $t1, 10 # 10^(how many digits in month)
		
			Convert.typeA.month.loop:
				beq $s0, 0, Convert.typeA.day
				
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
			
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
				j Convert.typeA.month.loop
			
			Convert.typeA.day:
			li $t0, '/'          # a1 += t0 + '/'
			sb $t0, ($a1)
			addi $a1, $a1, 1

			jal Day
			la $s0, ($v0)
		
			li $t1, 100 # 10^(how many digits in day)
			bge $s0, 9, Convert.typeA.day.loop
		
			li $t0, '0'          # if day <= 9: a1 += '0'
			sb $t0, ($a1)
			addi $a1, $a1, 1
			li $t1, 10 # 10^(how many digits in day)
			
			Convert.typeA.day.loop:
				beq $s0, 0, Convert.typeA.year
			
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
			
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
				j Convert.typeA.day.loop
			Convert.typeA.year:
			li $t0, '/'          # a1 += t0 + '/'
			sb $t0, ($a1)
			addi $a1, $a1, 1
		
			jal Year
			la $s0, ($v0)        # s0 = year
			
			li $t1, 1 # 10^(how many digits in day)
			Convert.typeA.year.calculateDigitsInYear:
				div $t0, $s0, $t1
				beq $t0, 0, Convert.typeA.year.loop
				li $t2, 10
				mul $t1, $t1, $t2
				j Convert.typeA.year.calculateDigitsInYear
			
			Convert.typeA.year.loop:
				beq $s0, 0, Convert.end
			
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
				
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
			
				j Convert.typeA.year.loop
			
			j Convert.end
			
		#Convert to Type B: Month DD, YYYY
		Convert.typeB:
			Convert.typeB.month:

			jal Month
			la $s0, ($v0)        # s0 = month
		
			subi $s0, $s0, 1
			li $t2, 4     
			mul $s0, $s0, $t2
			lw $s0, Months($s0)  # s0 = Months[s0 - 1]  (String)  
		
			Convert.typeB.month.loop:
			lb $t0, ($s0)             # t0 = *s0 (Char)
			beq $t0, '\0', Convert.typeB.day  # while t0 != '\0'
			
			sb $t0, ($a1)            # a1 += t0
			addi $a1, $a1, 1
			addi $s0, $s0, 1         # s0++
			j Convert.typeB.month.loop
			
			Convert.typeB.day:
			li $t0, ' '          # a1 += t0 + ' '
			sb $t0, ($a1)
			addi $a1, $a1, 1

			jal Day
			la $s0, ($v0)
		
			li $t1, 100 # 10^(how many digits in day)
			bge $s0, 9, Convert.typeB.day.loop
		
			li $t0, '0'          # if day <= 9: a1 += '0'
			sb $t0, ($a1)
			addi $a1, $a1, 1
			li $t1, 10 # 10^(how many digits in day)
		
			Convert.typeB.day.loop:
				beq $s0, 0, Convert.typeB.year
			
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
			
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
				j Convert.typeB.day.loop
			Convert.typeB.year:
			li $t0, ','          # a1 += t0 + ','
			sb $t0, ($a1)
			addi $a1, $a1, 1
		
			li $t0, ' '          # a1 += t0 + ' '
			sb $t0, ($a1)
			addi $a1, $a1, 1
			
			jal Year
			la $s0, ($v0)        # s0 = year
			
			li $t1, 1 # 10^(how many digits in day)
			Convert.typeB.year.calculateDigitsInYear:
				div $t0, $s0, $t1
				beq $t0, 0, Convert.typeB.year.loop
				li $t2, 10
				mul $t1, $t1, $t2
				j Convert.typeB.year.calculateDigitsInYear
			
			Convert.typeB.year.loop:
				beq $s0, 0, Convert.end
				
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
			
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
			
				j Convert.typeB.year.loop
			
			j Convert.end
		
		# Convert to Type C DD Month YYYY
		Convert.typeC:
			Convert.typeC.day:
			jal Day
			la $s0, ($v0)
		
			li $t1, 100 # 10^(how many digits in day)
			bge $s0, 9, Convert.typeC.day.loop
		
			li $t0, '0'          # if day <= 9: a1 += '0'
			sb $t0, ($a1)
			addi $a1, $a1, 1
			li $t1, 10 # 10^(how many digits in day)
			
			Convert.typeC.day.loop:
				beq $s0, 0, Convert.typeC.month
				
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
				
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
				j Convert.typeC.day.loop
			
			Convert.typeC.month:
			li $t0, ' '          # a1 += t0 + ' '
			sb $t0, ($a1)
			addi $a1, $a1, 1
		
			jal Month
			la $s0, ($v0)        # s0 = month
		
			subi $s0, $s0, 1     
			li $t2, 4
			mul $s0, $s0, $t2
			lw $s0, Months($s0)  # s0 = Months[s0 - 1]  (String)  
			
			Convert.typeC.month.loop:
				lb $t0, ($s0)             # t0 = *s0 (Char)
				beq $t0, '\0', Convert.typeC.year  # while t0 != '\0'
			
				sb $t0, ($a1)            # a1 += t0
				addi $a1, $a1, 1
				addi $s0, $s0, 1         # s0++
				j Convert.typeC.month.loop
			
			Convert.typeC.year:
			li $t0, ','          # a1 += t0 + ','
			sb $t0, ($a1)
			addi $a1, $a1, 1
		
			li $t0, ' '          # a1 += t0 + ' '
			sb $t0, ($a1)
			addi $a1, $a1, 1
		
			jal Year
			la $s0, ($v0)        # s0 = year
		
			li $t1, 1 # 10^(how many digits in year)
			Convert.typeC.year.calculateDigitsInYear:
				div $t0, $s0, $t1
				beq $t0, 0, Convert.typeC.year.loop
				li $t2, 10
				mul $t1, $t1, $t2
				j Convert.typeC.year.calculateDigitsInYear
			
			Convert.typeC.year.loop:
				beq $s0, 0, Convert.end
			
				div $t1, $t1, 10
				div $s0, $t1        # s0 %= t1
				mflo $t0
				mfhi $s0
				
				addi $t0, $t0, '0'  # a1 += t0 + '0'
				sb $t0, ($a1)
				addi $a1, $a1, 1
				
				j Convert.typeC.year.loop
		Convert.end:
		lw $v0, 8($sp)
		
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		lw $a2, 12($sp)
		lw $t0, 16($sp)
		lw $s0, 20($sp)
		lw $t1, 24($sp)
		lw $t2, 28($sp)
		addi $sp, $sp, 32
		jr $ra

	# file manipulate
	# arguments $a0: buffer_1(to save contents of the file), $a1: buffer_2(to save temporary result)
	# return
	file_manipulate:
		addi $sp, $sp, -48
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $a1, 8($sp)
		sw $a2, 12($sp)
		sw $t0, 16($sp)
		sw $s0, 20($sp)
		sw $s1, 24($sp)
		sw $s2, 28($sp)
		sw $s3, 32($sp)
		sw $s4, 36($sp)
		sw $v0, 40($sp)
		sw $v1, 44($sp)

		move $s3, $a0
		move $s4, $a1

		# open input file for reading
		li $v0, 13       
		la $a0, fileIn   
 		li $a1, 0       # 0: read
		li $a2, 0        
  		syscall            
  		move $s0, $v0   # save the file descriptor 				
		
		# read contents of input file into buffer
		li $v0, 14
		move $a0, $s0
		move $a1, $s3
		li $a2, 100
		syscall 
		
		# Close input file
  		li $v0, 16      
		move $a0, $s0 
 		syscall
		
		file_manipulate.format_buffer:
			move $s0, $s3

			file_manipulate.format_buffer.loop:
				lb $t0, ($s0)
				beq $t0, '\0', file_manipulate.write
				beq $t0, '\n', file_manipulate.format_buffer.separate_times
				bne $t0, ' ', file_manipulate.format_buffer.increse
				li $t0, '/'
				sb $t0, ($s0)
			file_manipulate.format_buffer.increse:
				addi $s0, $s0, 1
				j file_manipulate.format_buffer.loop
			file_manipulate.format_buffer.separate_times:
				li $t0, '\0'
				sb $t0, ($s0)
				move $s1, $s3 # s1 = Time_1
				addi $s2, $s0, 1 # s2 = Time_2
				j file_manipulate.format_buffer.increse
				
		file_manipulate.write:		
			# open input file for writing
			li $v0, 13       
			la $a0, fileOut   
 			li $a1, 1       # 1: write      
  			syscall            
  			move $s0, $v0   # save the file descriptor 			

			la $a0, ($s1)
			jal isValid
			move $t0, $v0
			
			la $a0, ($s2)
			jal isValid
			move $t1, $v0

			beq $t0, 0, file_manipulate.write.not_Valid_Time1	
			beq $t1, 0, file_manipulate.write.not_Valid_Time2	
			j file_manipulate.write.calculate

			file_manipulate.write.not_Valid_Time1:
				bne $t1, 0, file_manipulate.write.not_Valid_Time1.write
				
				la $a0, khongHopLe3
				jal getLength
				move $a2, $v0
				
				# write khongHopLe3
				li   $v0, 15      
 				move $a0, $s0      
 				la   $a1, khongHopLe3
 				syscall   
				j file_manipulate.write.close
				
				file_manipulate.write.not_Valid_Time1.write:
					la $a0, khongHopLe1
					jal getLength
					move $a2, $v0	
				
					# write khongHopLe1
					li   $v0, 15      
 					move $a0, $s0    
 					la   $a1, khongHopLe1   
 					syscall   
					j file_manipulate.write.close

			file_manipulate.write.not_Valid_Time2:

				la $a0, khongHopLe2
				jal getLength
				move $a2, $v0

				# write khongHopLe2
				li   $v0, 15      
 				move $a0, $s0      
 				la   $a1, khongHopLe2  
 				syscall   	
				j file_manipulate.write.close
		
			file_manipulate.write.calculate:
				# 1
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q1
				li $a2, 3
 				syscall   	
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $s1
				li $a2, 10
 				syscall   

				# 2A
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q2a
				li $a2, 5
 				syscall   	
				
				move $a0, $s1
				move $a1, $s4
				li $a2, 'A' 
				jal Convert
				move $t0, $v0
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $t0
				li $a2, 10
 				syscall   	
				
				# 2B
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q2b
				li $a2, 5
 				syscall   	
				
				move $a0, $s1
				move $a1, $s4
				li $a2, 'B'
				jal Convert
				move $t0, $v0
	
				move $a0, $t0
				jal getLength
				move $a2, $v0				

				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $t0
 				syscall  
				
				# 2C
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q2c
				li $a2, 5
 				syscall   	
				
				move $a0, $s1
				move $a1, $s4
				li $a2, 'C'
				jal Convert
				move $t0, $v0
	
				move $a0, $t0
				jal getLength
				move $a2, $v0				

				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $t0
 				syscall
				
				# 3 
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q3
				li $a2, 4
 				syscall 
				
				move $a0, $s1
				jal Year
				move $a0, $v0
				jal int2str
				move $t0, $v0
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $t0
				li $a2, 4
 				syscall
				
				move $a0, $s1
				jal LeapYear
				beq $v0, 1, file_manipulate.printTbNamNhuan
				la $a0, tbNamThuong
				jal getLength
				move $a2, $v0
				
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, tbNamThuong
 				syscall
				j quest4		
				file_manipulate.printTbNamNhuan:
					la $a0, tbNamNhuan
					jal getLength
					move $a2, $v0
				
					li $v0, 15      
 					move $a0, $s0  
 					la $a1, tbNamNhuan
 					syscall
					
				quest4:
					li $v0, 15      
 					move $a0, $s0  
 					la $a1, q4
					li $a2, 4
 					syscall 

					li $v0, 15      
 					move $a0, $s0  
 					move $a1, $s1
					li $a2, 10
 					syscall
					
					li $v0, 15      
 					move $a0, $s0  
 					la $a1, La
					li $a2, 4
 					syscall 
					
					move $a0, $s1
					jal Weekday
					move $a0, $v0
					jal getLength
					move $a2, $v0
					move $a1, $a0	
					li $v0, 15      
 					move $a0, $s0  
 					syscall

				#5
				la $a0, q5
				jal getLength
				move $a2, $v0

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q5
 				syscall 
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $s1
				li $a2, 10
 				syscall
				
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, La
				li $a2, 4
 				syscall 				

				move $a0, $s1
				jal daysFrom_1.1.1
				move $a0, $v0
				move $a1, $s4
				jal int2str
				move $a0, $v0
				jal getLength
				move $a2, $v0
				move $a1, $a0
				
				li $v0, 15      
 				move $a0, $s0  
 				syscall
				
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, ngay
				li $a2, 5
 				syscall
				
				#6
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q6
				li $a2, 4
 				syscall
				
				move $a0, $s1
				jal Year
				move $a0, $v0
				jal int2str
				move $t0, $v0
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $t0
				li $a2, 4
 				syscall

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, La
				li $a2, 4
 				syscall 

				move $a0, $s1
				jal CanChi
				
				move $t0, $v1
				move $a0, $v0
				jal getLength
				move $a2, $v0
				move $a1, $a0
				
				li $v0, 15      
 				move $a0, $s0  
 				syscall 

				move $a0, $t0
				jal getLength
				move $a2, $v0
				move $a1, $a0
				
				li $v0, 15      
 				move $a0, $s0  
 				syscall
	
				#7
				la $a0, q7
				jal getLength
				move $a2, $v0

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q7
 				syscall 
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $s1
				li $a2, 10
 				syscall				

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, denNgay
				li $a2, 10
 				syscall 
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $s2
				li $a2, 10
 				syscall

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, La
				li $a2, 4
 				syscall 
				
				move $a0, $s1
				move $a1, $s2
				jal DayDiff

				move $a0, $v0
				jal int2str

				move $a0, $v0
				jal getLength
				move $a2, $v0
				move $a1, $a0
				
				li $v0, 15      
 				move $a0, $s0  
 				syscall
			
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, ngay
				li $a2, 5
 				syscall

				#8
				la $a0, q8
				jal getLength
				move $a2, $v0

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, q8
 				syscall 
				
				move $a0, $s1
				jal Year
				move $a0, $v0
				jal int2str
				move $t0, $v0
				
				li $v0, 15      
 				move $a0, $s0  
 				move $a1, $t0
				li $a2, 4
 				syscall
			
				li $v0, 15      
 				move $a0, $s0  
 				la $a1, nhatLa
				li $a2, 9
 				syscall 
			
				move $a0, $s1
				jal NearestLeapYears
				move $t0, $v1

				move $a0, $v0
				jal int2str

				move $a1, $v0			
				li $a2, 4

				li $v0, 15      
 				move $a0, $s0  
 				syscall

				li $v0, 15      
 				move $a0, $s0  
 				la $a1, va
				li $a2, 4
 				syscall

				move $a0, $t0
				jal int2str
				
				move $a1, $v0
				li $a2, 4

				li $v0, 15      
 				move $a0, $s0  
 				syscall
			# Close output file
			file_manipulate.write.close:
  				li $v0, 16      
				move $a0, $s0 
 				syscall

		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		lw $a2, 12($sp)
		lw $t0, 16($sp)
		lw $s0, 20($sp)
		lw $s1, 24($sp)
		lw $s2, 28($sp)
		lw $s3, 32($sp)
		lw $s4, 36($sp)
		lw $v0, 40($sp)
		lw $v1, 44($sp)
		addi $sp, $sp, 48
		jr $ra

	# function to convert int to string
	# arguments $a0: int, $a1: string
	# return $v0: string	
	int2str:
		addi $sp, $sp, -24
		sw $ra, 0($sp)
		sw $a0, 4($sp)
		sw $a1, 8($sp)
		sw $t0, 12($sp)
		sw $s0, 16($sp)
		sw $t2, 20($sp)
		
		move $s0, $a0
		
		li $t1, 1 # 10^(how many digits in int)
		int2str.findLength:
			div $t0, $s0, $t1
			beq $t0, 0, int2str.toString
			li $t2, 10
			mul $t1, $t1, $t2
			j int2str.findLength

		int2str.toString:
			div $t1, $t1, 10
			beq $t1, 0, int2str.end
			div $s0, $t1        # s0 %= t1
			mflo $t0
			mfhi $s0
				
			addi $t0, $t0, '0'  # a1 += t0 + '0'
			sb $t0, ($a1)
			addi $a1, $a1, 1
			j int2str.toString
		
		int2str.end:
		li $t0, '\0'
		sb $t0, ($a1)
		lw $v0, 8($sp)
		
		lw $ra, 0($sp)
		lw $a0, 4($sp)
		lw $a1, 8($sp)
		lw $t0, 12($sp)
		lw $s0, 16($sp)
		lw $t2, 20($sp)	
		addi $sp, $sp, 24
		jr $ra
