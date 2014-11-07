# This Python file uses the following encoding: utf-8
import xlrd
import MySQLdb

db = MySQLdb.connect(host="localhost", user="root", passwd="password", db="war_db", use_unicode=True, charset="utf8")


workbook = xlrd.open_workbook('Main_Conflict_Table.xls')
worksheet = workbook.sheet_by_name('Blad1')


for r in range(1, worksheet.nrows):
	#the war_id is different from the unique id! 
	#(Basically 'connects' the same war in different rows.)
	war_id = worksheet.cell_value(r,0)
	location = worksheet.cell_value(r,1)
	side_a = worksheet.cell_value(r,2)
	side_a_2 = worksheet.cell_value(r,3)
	side_b = worksheet.cell_value(r,4)
	side_b_2 = worksheet.cell_value(r,5)
	territory = worksheet.cell_value(r,7)
	year = worksheet.cell_value(r,8)
	gw_a = worksheet.cell_value(r,19)
	#TODO!
	#there is more than one number in these collumns, so we just use the first one for now. Later change this!
	gw_a_2 = 0#worksheet.cell_value(r,20).split(',')[0] 
	gw_b = 0#worksheet.cell_value(r,21).split(',')[0]
	gw_b_2 = 0#worksheet.cell_value(r,22).split(',')[0]

	cur = db.cursor() 
	cur.execute("""INSERT INTO war (war_id, location, side_a, side_a_2, side_b, side_b_2, territory, year, gw_a, gw_a_2, gw_b, gw_b_2) 
		VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);""", (war_id, location, side_a, side_a_2, side_b, side_b_2, territory, year, gw_a, gw_a_2, gw_b, gw_b_2))
	db.commit()
