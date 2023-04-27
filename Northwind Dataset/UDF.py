import sqlite3
import pandas as pd 
square = lambda n : n*n
bd = sqlite3.connect("Northwind.db")
bd.create_function("square",1,square)
cursor = bd.cursor()
cursor.execute('''
SELECT *, square (Price) FROM Products WHERE Price > 10
''')
results = cursor.fetchall()
results_df = pd.DataFrame(results)
bd.commit()
cursor.close()
bd.close()
print(results_df)