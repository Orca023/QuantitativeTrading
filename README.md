## 低頻數量化交易模型 QuantitativeTrading : QuantitativeTradingJulia , QuantitativeTradingPython
#### Julia , Python
#### 可擴展的數量化交易模型框架 ( scalable quantitative trading model frame ) , 分別使用 Julia 或 Python 程式設計語言 ( computer programming language ) 各自獨立實現 Julia , Pyhton 兩套方案序列遍歷 ( sequence traversal ) 動作 , 借用 Julia 或 Python 的第三方擴展包 ( third-party extensions ( libraries or modules ) ) 實現 Julia , Python 兩套方案優化算法 ( parameters optimization ) 參數最優化.

---

<p word-wrap: break-word; word-break: break-all; overflow-x: hidden; overflow-x: hidden;></p>

一. 其中「`QuantitativeTradingJulia`」項目，使用 Julia 程式設計語言 ( computer programming language )，借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`Optim`」「`JSON`」「`CSV`」「`XLSX`」「`JLD`」「`DataFrames`」實現 .

1. 借用「`Optim`」模組的「`optimize`」函數，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingJulia`」參數 .

2. 借用「`JSON`」模組，實現 Julia 原生數據類型字典 ( Base.Dict ) 對象 ( Object ) 與 JSON 字符串 ( String ) 對象 ( Object ) 之間，數據類型相互轉換 .

3. 借用「`CSV`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作逗號 ( , ) 分隔符檔 ( .csv ) 讀 (read) , 寫 ( write ) 功能 .

4. 借用「`XLSX`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 讀 (read) , 寫 ( write ) 功能 .

5. 借用「`JLD`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作 Hierarchical Data Format version 5 , HDF5 格式的數據 ( Julia data format , JLD ) 持久化存儲檔 ( .jld ) 讀 (read) , 寫 ( write ) 功能 .

6. 借用「`DataFrames`」模組，實現程式設計語言 ( computer programming language ) : Julia 處理數據框 ( Julia - DataFrame ) 類型的數據 .

二. 其中「`QuantitativeTradingPython`」項目，使用 Python3 程式設計語言 ( computer programming language )，借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`numpy`」「`scipy`」「`pandas`」實現 .

1. 借用「`numpy`」模組，實現基礎數學向量 ( Vector ) 運算 .

2. 借用「`scipy`」項目的優化模組「`optimize`」的「`minimize`」函數，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingPython`」參數 .

3. 借用「`pandas`」模組，實現程式設計語言 ( computer programming language ) : Python 操作逗號 ( , ) 分隔符檔 ( .csv ) 和微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 讀 (read) , 寫 ( write ) 功能 .

4. 借用「`pandas`」模組，實現程式設計語言 ( computer programming language ) : Python 處理數據框 ( Python - DataFrame ) 類型的數據 .

5. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`json`」模組，實現 Python 原生數據類型字典 ( dict ) 對象 ( Object ) 與 JSON 字符串 ( String ) 對象 ( Object ) 之間，數據類型相互轉換 .

6. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`csv`」模組，實現程式設計語言 ( computer programming language ) : Python 操作逗號 ( , ) 分隔符檔 ( .csv ) 讀 (read) , 寫 ( write ) 功能 .

7. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`pickle`」模組，實現數據持久化存儲序列化 ( pickling ) 二進位字節流 ( bytes ) 檔 ( .pickle ) 讀 (read) , 寫 ( write ) 功能 .

---

一. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Indicators.py`

代碼脚本 ( Script ) 檔 : `Quantitative_Indicators.jl` 或 `Quantitative_Indicators.py` 是此「`QuantitativeTrading`」數量化交易模型的指標模組，計算日棒缐 ( K - Line ) 數據趨勢强度自定義示意指標的模組，實現從日棒缐 ( K - Line ) 原始數據計算抽象獲取自定義示意指標值的功能 .

二. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Data_Cleaning.py`

代碼脚本 ( Script ) 檔 : `Quantitative_Data_Cleaning.jl` 或 `Quantitative_Data_Cleaning.py` 是此「`QuantitativeTrading`」數量化交易模型的數據初加工模組，初步清理日棒缐 ( K - Line ) 原始數據，並引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組，計算趨勢强度自定義示意指標，然後使計算結果標準化日棒缐 ( K - Line ) 數據，輸出至字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量「`stepping_data`」存儲，可進一步寫入自定義本地檔 ( .jld 或 .pickle , .csv , .xlsx ) 持久化存儲 .

三. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_MarketTiming.py`

代碼脚本 ( Script ) 檔 : `Quantitative_MarketTiming.jl` 或 `Quantitative_MarketTiming.py` 是此「`QuantitativeTrading`」數量化交易模型擇時 ( market timing ) 規則模組，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，然後操作標準化日棒缐 ( K - Line ) 數據，計算擇時 ( market timing ) 判斷及優化 ( optimization ) 擇時 ( market timing ) 規則參數 ( parameters ) 依據，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

四. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_PickStock.py`

代碼脚本 ( Script ) 檔 : `Quantitative_PickStock.jl` 或 `Quantitative_PickStock.py` 是此「`QuantitativeTrading`」數量化交易模型選股 ( pick stock ) 規則模組，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，操作標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_MarketTiming.jl`」或「`Quantitative_MarketTiming.py`」模組計算擇時 ( market timing ) 操作，再計算選股 ( pick stock ) 判斷及優化 ( optimization ) 選股 ( pick stock ) 規則參數 ( parameters ) 依據，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

五. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_SizePosition.py`

代碼脚本 ( Script ) 檔 : `Quantitative_SizePosition.jl` 或 `Quantitative_SizePosition.py` 是此「`QuantitativeTrading`」數量化交易模型倉位 ( size position ) 規則模組，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，操作標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_MarketTiming.jl`」或「`Quantitative_MarketTiming.py`」模組計算擇時 ( market timing ) 操作，引用「`Quantitative_PickStock.jl`」或「`Quantitative_PickStock.py`」模組計算選股 ( pick stock ) 操作，再計算倉位 ( size position ) 判斷及優化 ( optimization ) 倉位 ( size position ) 規則參數 ( parameters ) 依據，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

六. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_BackTesting.py`

代碼脚本 ( Script ) 檔 : `Quantitative_BackTesting.jl` 或 `Quantitative_BackTesting.py` 是此「`QuantitativeTrading`」數量化交易模型回測 ( back testing ) 模組，採取推進分析 ( stepper movement ) ( propulsion analysis ) 的方法，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，操作標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_MarketTiming.jl`」或「`Quantitative_MarketTiming.py`」模組計算擇時 ( market timing ) 操作，引用「`Quantitative_PickStock.jl`」或「`Quantitative_PickStock.py`」模組計算選股 ( pick stock ) 操作，引用「`Quantitative_SizePosition.jl`」或「`Quantitative_SizePosition.py`」模組計算倉位 ( size position ) 操作，推進分析 ( stepper movement ) ( propulsion analysis ) 遍歷數據序列計算纍計盈虧額，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

七. 純文本文檔 ( .txt ) : `QuantitativeTrading/QuantitativeTradingJulia/config.txt` , `QuantitativeTrading/QuantitativeTradingPython/config.txt`

純文本文檔 ( .txt ) : `QuantitativeTrading/QuantitativeTradingJulia/config.txt` , `QuantitativeTrading/QuantitativeTradingPython/config.txt` 是「`QuantitativeTradingJulia`」和「`QuantitativeTradingPython`」數量化交易模型的參數配置文檔 ( config file ) 行使運行參數傳入職能 .

八. 檔案夾 ( folder ) : `QuantitativeTrading/Data/`

檔案夾 ( folder )「`QuantitativeTrading/Data/`」爲日棒缐 ( K - Line ) 數據檔的保存位置 .

其中 :

1. 檔案夾 ( folder )「`QuantitativeTrading/Data/K-Day-source/`」爲日棒缐 ( K - Line ) 原始數據逗號 ( , ) 分隔符檔 ( .csv ) 的保存位置，如此例通過深圳市招商證券股份有限公司 ( CHINA MERCHANTS SECURITIES CO., LTD. ) 證券交易服務用戶端 ( zyyht.exe ) 下載得到中華人民共和國人民幣認購和交易的普通股票 ( A shares ) 數據逗號 ( , ) 分隔符檔 ( .csv ) 示例 .

2. 程式設計語言 ( computer programming language ) : Julia 數據檔 ( .jld ) 「`QuantitativeTrading/Data/steppingData.jld`」是使用「`Quantitative_Data_Cleaning.jl`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據本地存儲爲程式設計語言 ( computer programming language ) : Julia 數據持久化存儲 Hierarchical Data Format version 5 , HDF5 格式的數據 ( Julia data format , JLD ) 檔 ( .jld ) 示例 .

3. 程式設計語言 ( computer programming language ) : Python 數據檔 ( .pickle ) 「`QuantitativeTrading/Data/steppingData.pickle`」是使用「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據本地存儲爲程式設計語言 ( computer programming language ) : Python 數據持久化存儲序列化 ( pickling ) 二進位字節流 ( bytes ) 檔 ( .pickle ) 示例 .

4. 逗號 ( , ) 分隔符檔 ( .csv ) 「`QuantitativeTrading/Data/SZ#002611.csv`」是使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據持久化存儲爲本地逗號 ( , ) 分隔符檔 ( .csv ) 示例 .

5. 微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 「`QuantitativeTrading/Data/SZ#002611.xlsx`」是使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據持久化存儲爲本地微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 示例 .

可自定義修改代碼脚本 ( Script ) 檔「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組内函數，個性化調整擴展此量化交易模型日棒缐 ( K - Line ) 數據趨勢强度示意指標，並輔以調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.jl`」「`Quantitative_PickStock.jl`」「`Quantitative_SizePosition.jl`」「`Quantitative_BackTesting.jl`」或「`Quantitative_MarketTiming.py`」「`Quantitative_PickStock.py`」「`Quantitative_SizePosition.py`」「`Quantitative_BackTesting.py`」内函數 ( Function ) 因應協調，即可實現個性化擴展此量化交易模型效果 .

此量化交易模型「`QuantitativeTradingJulia`」的優化器 ( optimization ) 借用程式設計語言 ( computer programming language ) : Julia 第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`Optim`」模組的「`optimize`」函數 ( Function ) 實現，未做計算效率優化，可自行變更調整優化器，並自行調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.jl`」「`Quantitative_PickStock.jl`」「`Quantitative_SizePosition.jl`」内函數 ( Function ) 因應協調，可實現優化效率提速 .

此量化交易模型「`QuantitativeTradingPython`」的優化器 ( optimization ) 借用程式設計語言 ( computer programming language ) : Python 第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`scipy`」項目内優化模組「`optimize`」内「`minimize`」函數 ( Function ) 實現，未做計算效率優化，可自行變更調整優化器，並自行調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.py`」「`Quantitative_PickStock.py`」「`Quantitative_SizePosition.py`」内函數 ( Function ) 因應協調，可實現優化效率提速 .

---

Python3 Explain : Quantitative_Indicators.py , Quantitative_Data_Cleaning.py , Quantitative_MarketTiming.py , Quantitative_PickStock.py , Quantitative_SizePosition.py , Quantitative_BackTesting.py

計算機程式設計語言 ( Python ) 解釋器 ( Interpreter ) 與作業系統 ( Operating System ) 環境配置釋明 :

Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30

Interpreter: python-3.11.2-amd64.exe

Interpreter: Python-3.12.4-tar.xz

Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280

Interpreter: Python-3.12.4-tar.xz

![]()

Interpreter :

python - 3.12.4

[程式設計 Python 語言解釋器 ( Interpreter ) 官方網站](https://www.python.org/): 
https://www.python.org/

[程式設計 Python 語言解釋器 ( Interpreter ) 官方下載頁](https://www.python.org/downloads/): 
https://www.python.org/downloads/

[程式設計 Python 語言解釋器 ( Interpreter ) 官方 GitHub 網站賬戶](https://github.com/python): 
https://github.com/python

[程式設計 Python 語言解釋器 ( Interpreter ) 官方 GitHub 網站倉庫頁](https://github.com/python/cpython): 
https://github.com/python/cpython.git

![]()

程式設計 Python 語言統計算法 ( algorithm ) 借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 説明 :

[Python - numpy 官方網站](https://numpy.org/): 
https://numpy.org/

[Python - numpy 官方手冊](https://numpy.org/doc/stable/): 
https://numpy.org/doc/stable/

[Python - numpy 官方 GitHub 網站倉庫頁](https://github.com/numpy/numpy): 
https://github.com/numpy/numpy.git

[Python - scipy 官方網站](https://scipy.org/): 
https://scipy.org/

[Python - scipy 官方手冊](https://docs.scipy.org/doc/scipy/): 
https://docs.scipy.org/doc/scipy/

[Python - scipy 官方 GitHub 網站倉庫頁](https://github.com/scipy/scipy): 
https://github.com/scipy/scipy.git

[Python - pandas 官方網站](https://pandas.pydata.org/): 
https://pandas.pydata.org/

[Python - pandas 官方手冊](https://pandas.pydata.org/docs/): 
https://pandas.pydata.org/docs/

[Python - pandas 官方 GitHub 網站倉庫頁](https://github.com/pandas-dev/pandas): 
https://github.com/pandas-dev/pandas.git

[Python - matplotlib 官方網站](https://matplotlib.org/): 
https://matplotlib.org/

[Python - matplotlib 官方手冊](https://matplotlib.org/stable/): 
https://matplotlib.org/stable/

[Python - matplotlib 官方 GitHub 網站倉庫頁](https://github.com/matplotlib/matplotlib): 
https://github.com/matplotlib/matplotlib.git

[Python - statsmodels 官方手冊](https://www.statsmodels.org/stable/index.html): 
https://www.statsmodels.org/stable/index.html

[Python - statsmodels 官方 GitHub 網站倉庫頁](https://github.com/statsmodels/statsmodels): 
https://github.com/statsmodels/statsmodels.git

[Python - sklearn 官方網站](https://scikit-learn.org/stable/): 
https://scikit-learn.org/stable/

[Python - sklearn 官方手冊](https://scikit-learn.org/stable/user_guide.html): 
https://scikit-learn.org/stable/user_guide.html

[Python - sklearn 官方 GitHub 網站倉庫頁](https://github.com/scikit-learn/scikit-learn): 
https://github.com/scikit-learn/scikit-learn.git

[Python - sympy 官方網站](https://www.sympy.org/en/index.html): 
https://www.sympy.org/en/index.html

[Python - sympy 官方手冊](https://docs.sympy.org/latest/index.html): 
https://docs.sympy.org/latest/index.html

[Python - sympy 官方 GitHub 網站倉庫頁](https://github.com/sympy/sympy): 
https://github.com/sympy/sympy.git

![]()

使用説明:

1. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Data_Cleaning.py`」運行示例 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/bin/python3 /home/QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Data_Cleaning.py configFile=/home/QuantitativeTrading/QuantitativeTradingPython/config.txt input_K_Line=/home/QuantitativeTrading/Data/K-Day-source/ is_save_pickle=True output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle is_save_csv=False output_csv_K_Line=/home/QuantitativeTrading/Data/K-Day/ is_save_xlsx=False output_xlsx_K_Line=/home/QuantitativeTrading/Data/K-Day/
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Python/Python311/python.exe C:/QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Data_Cleaning.py configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_pickle=True output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle is_save_csv=False output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=False output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/
```

2. 標準化日棒缐 ( K - Line ) 數據，以程式設計語言 ( computer programming language ) : Python 字典類型 ( Python - dict ) 數據傳入，數據格式可類比如下 :

training_data = 
```
{
    str("002607") : {
        str("date_transaction") : [ datetime.date("2022-03-14") , datetime.date("2022-03-15") , datetime.date("2022-03-16") , ... ],
        str("turnover_volume") : [ int(10002) , int(10003) , int(10001) , ... ],
        str("opening_price") : [ float(1.81) , float(1.52) , float(1.23) , ... ],
        str("close_price") : [ float(1.21) , float(1.52) , float(1.83) , ... ],
        str("low_price") : [ float(1.11) , float(1.42) , float(1.13) , ... ],
        str("high_price") : [ float(1.91) , float(1.62) , float(1.93) , ... ],
        ...
    },
    str("002608") : {
        str("date_transaction") : [ datetime.date("2022-03-14") , datetime.date("2022-03-15") , datetime.date("2022-03-16") , ... ],
        str("turnover_volume") : [ int(10002) , int(10003) , int(10001) , ... ],
        str("opening_price") : [ float(1.81) , float(1.52) , float(1.23) , ... ],
        str("close_price") : [ float(1.21) , float(1.52) , float(1.83) , ... ],
        str("low_price") : [ float(1.11) , float(1.42) , float(1.13) , ... ],
        str("high_price") : [ float(1.91) , float(1.62) , float(1.93) , ... ],
        ...
    },
    str("002609") : {
        str("date_transaction") : [ datetime.date("2022-03-14") , datetime.date("2022-03-15") , datetime.date("2022-03-16") , ... ],
        str("turnover_volume") : [ int(10002) , int(10003) , int(10001) , ... ],
        str("opening_price") : [ float(1.81) , float(1.52) , float(1.23) , ... ],
        str("close_price") : [ float(1.21) , float(1.52) , float(1.83) , ... ],
        str("low_price") : [ float(1.11) , float(1.42) , float(1.13) , ... ],
        str("high_price") : [ float(1.91) , float(1.62) , float(1.93) , ... ],
        ...
    },
    ...
}
```

3. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Indicators.py`」内函數 ( Function ) 運行示例 :
```
return_Intuitive_Momentum = Intuitive_Momentum(
    training_data["002611"]["close_price"],  # [],  # 時間序列 ( time series ) 數據一維數組 ( Python - list ) ;
    int(3),  # Parameter-1,  # 觀察收益率歷史向前推的交易日長度;
    y_P_Positive = None,  # float(1.0),  # 增長率（正）的可能性（頻率）示意;
    y_P_Negative = None,  # float(1.0),  # 衰退率（負）的可能性（頻率）示意;
    weight = None  # []  # [float(int(int(i) + int(1)) / int(Parameter-1)) for i in range(Parameter-1)]  # 每計增長率的權重（weight）值，距離當下時長的倒數（直覺推理有效性示意）;
)
print("closing price growth rate :\n", return_Intuitive_Momentum)
```
```
return_Intuitive_Momentum_KLine = Intuitive_Momentum_KLine(
    {
        "date_transaction": training_data["002611"]["date_transaction"],  # 交易日期;
        "turnover_volume": training_data["002611"]["turnover_volume"],  # 成交量;
        "opening_price": training_data["002611"]["opening_price"],  # 開盤成交價;
        "close_price": training_data["002611"]["close_price"],  # 收盤成交價;
        "low_price": training_data["002611"]["low_price"],  # 最低成交價;
        "high_price": training_data["002611"]["high_price"],  # 最高成交價;
        "focus": training_data["002611"]["focus"],  # 當日成交價重心;
        "amplitude": training_data["002611"]["amplitude"],  # 當日成交價絕對振幅;
        "amplitude_rate": training_data["002611"]["amplitude_rate"],  # 當日成交價相對振幅（%）;
        "opening_price_Standardization": training_data["002611"]["opening_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
        "closing_price_Standardization": training_data["002611"]["closing_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
        "low_price_Standardization": training_data["002611"]["low_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日最低成交價標準化值;
        "high_price_Standardization": training_data["002611"]["high_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日最高成交價標準化值;
        "turnover_volume_growth_rate": training_data["002611"]["turnover_volume_growth_rate"],  # 成交量的成長率;
        "opening_price_growth_rate": training_data["002611"]["opening_price_growth_rate"],  # 開盤價的成長率;
        "closing_price_growth_rate": training_data["002611"]["closing_price_growth_rate"],  # 收盤價的成長率;
        "closing_minus_opening_price_growth_rate": training_data["002611"]["closing_minus_opening_price_growth_rate"],  # 收盤價減開盤價的成長率;
        "high_price_proportion": training_data["002611"]["high_price_proportion"],  # 收盤價和開盤價裏的最大值占最高價的比例;
        "low_price_proportion": training_data["002611"]["low_price_proportion"],  # 最低價占收盤價和開盤價裏的最小值的比例;
        "moving_average_3": training_data["002611"]["moving_average_3"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）三日移動平均缐值;
        "moving_average_5": training_data["002611"]["moving_average_5"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）五日移動平均缐值;
        "moving_average_10": training_data["002611"]["moving_average_10"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）十日移動平均缐值;
        "turnover_rate": training_data["002611"]["turnover_rate"]  # 成交量換手率;
    },  # {}  # 標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    int(3),  # 觀察收益率歷史向前推的交易日長度;
    y_P_Positive = None,  # float(1.0),  # 增長率（正）的可能性（頻率）示意;
    y_P_Negative = None,  # float(1.0),  # 衰退率（負）的可能性（頻率）示意;
    weight = None,  # [],  # [float(int(int(i) + int(1)) / int(Parameter-1)) for i in range(Parameter-1)]  # 每計增長率的權重（weight）值，距離當下時長的倒數（直覺推理有效性示意）;
    Intuitive_Momentum = Intuitive_Momentum  # lambda argument : argument
)
print("turnover volume growth rate :\n", return_Intuitive_Momentum_KLine["P1_turnover_volume_growth_rate"])
print("opening price growth rate :\n", return_Intuitive_Momentum_KLine["P1_opening_price_growth_rate"])
print("closing price growth rate :\n", return_Intuitive_Momentum_KLine["P1_closing_price_growth_rate"])
print("closing minus opening price growth rate :\n", return_Intuitive_Momentum_KLine["P1_closing_minus_opening_price_growth_rate"])
print("high price proportion :\n", return_Intuitive_Momentum_KLine["P1_high_price_proportion"])
print("low price proportion :\n", return_Intuitive_Momentum_KLine["P1_low_price_proportion"])
print("intuitive momentum indicator :\n", return_Intuitive_Momentum_KLine["P1_Intuitive_Momentum"])
```

4. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_MarketTiming.py`」内函數 ( Function ) 運行示例 :
```
return_MarketTiming_fit_model = MarketTiming_fit_model(
    {"002611": training_data["002611"]},  # {}  # 標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    int(10),  # Parameter-1,  # 觀察收益率歷史向前推的交易日長度;
    float(+0.58),  # Parameter-2  # 買入閾值;
    float(-0.02),  # Parameter-3  # 賣出閾值;
    float(0.0),  # Parameter-4,  # risk threshold drawdown loss;  # 風險控制閾值，强制平倉，可接受的最大回撤比例 : Long_Position = sell_price ÷ buy_price , Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    Intuitive_Momentum_KLine,  # lambda argument : argument,
    "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("y_profit = ", return_MarketTiming_fit_model["002611"]["y_profit"])  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
print("y_Long_Position_profit = ", return_MarketTiming_fit_model["002611"]["y_Long_Position_profit"])  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
print("y_Short_Selling_profit = ", return_MarketTiming_fit_model["002611"]["y_Short_Selling_profit"])  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
print("y_loss = ", return_MarketTiming_fit_model["002611"]["y_loss"])  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
print("y_Long_Position_loss = ", return_MarketTiming_fit_model["002611"]["y_Long_Position_loss"])  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
print("y_Short_Selling_loss = ", return_MarketTiming_fit_model["002611"]["y_Short_Selling_loss"])  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
print("profit_total = ", return_MarketTiming_fit_model["002611"]["profit_total"])  # 每兩次對衝交易利潤 × 頻率，纍加總計;
print("profit_Positive = ", return_MarketTiming_fit_model["002611"]["profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("profit_Negative = ", return_MarketTiming_fit_model["002611"]["profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("Long_Position_profit_total = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_total"])  # 每兩次對衝交易利潤 × 頻率，纍加總計;
print("Long_Position_profit_Positive = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("Long_Position_profit_Negative = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("Short_Selling_profit_total = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_total"])  # 每兩次對衝交易利潤 × 頻率，纍加總計;
print("Short_Selling_profit_Positive = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("Short_Selling_profit_Negative = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("Long_Position_profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("Long_Position_profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("Short_Selling_profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("Short_Selling_profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print(return_MarketTiming_fit_model["002611"]["Long_Position_profit_date_transaction"])  # 每兩次對衝交易利潤，向量;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_profit_date_transaction"])  # 每兩次對衝交易利潤，向量;
print("maximum_drawdown = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum_drawdown_Long_Position = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown_Long_Position"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum_drawdown_Short_Selling = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown_Short_Selling"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("Long_Position_drawdown_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_drawdown_date_transaction"])  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
print("Short_Selling_drawdown_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_drawdown_date_transaction"])  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
print("average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("Long_Position_average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("Short_Selling_average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print(return_MarketTiming_fit_model["002611"]["Long_Position_price_amplitude_date_transaction"])  # 兩次對衝交易日成交價振幅平方和，向量;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_price_amplitude_date_transaction"])  # 兩次對衝交易日成交價振幅平方和，向量;
print("average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("Long_Position_average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("Short_Selling_average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print(return_MarketTiming_fit_model["002611"]["Long_Position_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）向量;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）向量;
print("average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["average_date_transaction_between"])  # 兩次交易間隔日長，均值;
print("Long_Position_average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_date_transaction_between"])  # 兩次對衝交易間隔日長，均值;
print("Short_Selling_average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_date_transaction_between"])  # 兩次對衝交易間隔日長，均值;
print("weight_MarketTiming = ", return_MarketTiming_fit_model["002611"]["weight_MarketTiming"])  # 擇時權重，每兩次對衝交易的盈利概率占比;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction_between"])  # 兩次對衝交易間隔日長，向量;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction_between"])  # 兩次對衝交易間隔日長，向量;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"])  # 按規則執行交易的日期，向量;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][0])  # 交易規則自動選取的交易日期;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][1])  # 交易規則自動選取的買入或賣出;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][2])  # 交易規則自動選取的成交價;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][3])  # 交易規則自動選取的成交量;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][4])  # 交易規則自動選取的成交次數記錄;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][5])  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][6])  # 交易日（Dates.Date 類型）;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][7])  # 當日總成交量（turnover volume）;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][8])  # 當日開盤（opening）成交價;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][9])  # 當日收盤（closing）成交價;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][10])  # 當日最低（low）成交價;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][11])  # 當日最高（high）成交價;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][12])  # 當日總成交金額（turnover amount）;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][13])  # 當日成交量（turnover volume）換手率（turnover rate）;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][14])  # 當日每股收益（price earnings）;
print(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][15])  # 當日每股净值（book value per share）;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"])  # 按規則執行交易的日期，向量;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][0])  # 交易規則自動選取的交易日期;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][1])  # 交易規則自動選取的買入或賣出;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][2])  # 交易規則自動選取的成交價;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][3])  # 交易規則自動選取的成交量;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][4])  # 交易規則自動選取的成交次數記錄;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][5])  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][6])  # 交易日（Dates.Date 類型）;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][7])  # 當日總成交量（turnover volume）;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][8])  # 當日開盤（opening）成交價;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][9])  # 當日收盤（closing）成交價;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][10])  # 當日最低（low）成交價;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][11])  # 當日最高（high）成交價;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][12])  # 當日總成交金額（turnover amount）;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][13])  # 當日成交量（turnover volume）換手率（turnover rate）;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][14])  # 當日每股收益（price earnings）;
print(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][15])  # 當日每股净值（book value per share）;
print(return_MarketTiming_fit_model["002611"]["revenue_and_expenditure_records_date_transaction"])  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
print(return_MarketTiming_fit_model["002611"]["P1_Array"])  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
```
```
result = MarketTiming(
    training_data = {"002611": training_data["002611"]},  # {}  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    testing_data = {"002611": testing_data["002611"]},  # {}  # 測試集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    Pdata_0 = [int(3), float(+0.1), float(-0.1), float(0.0)],  # training_data["002611"]["Pdata_0"],  # 優化迭代參數初值;
    weight = []  # training_data["002611"]["weight"],  # 優化迭代數據權重值;
    Plower = [-math.inf, -math.inf, -math.inf, -math.inf],  # training_data["002611"]["Plower"],  # 優化迭代參數值約束下限;
    Pupper = [+math.inf, +math.inf, +math.inf, +math.inf],  # training_data["002611"]["Pupper"],  # 優化迭代參數值約束上限;
    MarketTiming_fit_model = MarketTiming_fit_model,  # lambda argument : argument,
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # lambda argument : argument,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("Coefficient : ", result["002611"]["Coefficient"])  # 優化得到的參數;
print(result["002611"]["P1_Array"])  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
print("profit total per share : ", result["002611"]["testData"]["profit_total"])
print("profit positive per share : ", result["002611"]["testData"]["profit_Positive"])
print("profit negative per share : ", result["002611"]["testData"]["profit_Negative"])
print("Long Position profit total per share : ", result["002611"]["testData"]["Long_Position_profit_total"])
print("Long Position profit positive per share : ", result["002611"]["testData"]["Long_Position_profit_Positive"])
print("Long Position profit negative per share : ", result["002611"]["testData"]["Long_Position_profit_Negative"])
print("Short Selling profit total per share : ", result["002611"]["testData"]["Short_Selling_profit_total"])
print("Short Selling profit positive per share : ", result["002611"]["testData"]["Short_Selling_profit_Positive"])
print("Short Selling profit negative per share : ", result["002611"]["testData"]["Short_Selling_profit_Negative"])
print("maximum drawdown per share : ", result["002611"]["testData"]["maximum_drawdown"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum drawdown Long Position per share : ", result["002611"]["testData"]["maximum_drawdown_Long_Position"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum drawdown Short Selling per share : ", result["002611"]["testData"]["maximum_drawdown_Short_Selling"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("Long Position drawdown date transaction : ", result["002611"]["testData"]["Long_Position_drawdown_date_transaction"])  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
print("Short Selling drawdown date transaction : ", result["002611"]["testData"]["Short_Selling_drawdown_date_transaction"])  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
print("profit positive probability : ", result["002611"]["testData"]["profit_Positive_probability"])
print("profit negative probability : ", result["002611"]["testData"]["profit_Negative_probability"])
print("Long Position profit positive probability : ", result["002611"]["testData"]["Long_Position_profit_Positive_probability"])
print("Long Position profit negative probability : ", result["002611"]["testData"]["Long_Position_profit_Negative_probability"])
print("Short Selling profit positive probability : ", result["002611"]["testData"]["Short_Selling_profit_Positive_probability"])
print("Short Selling profit negative probability : ", result["002611"]["testData"]["Short_Selling_profit_Negative_probability"])
print("average date transaction between : ", result["002611"]["testData"]["average_date_transaction_between"])
print("Long Position average date transaction between : ", result["002611"]["testData"]["Long_Position_average_date_transaction_between"])
print("Short Selling average date transaction between : ", result["002611"]["testData"]["Short_Selling_average_date_transaction_between"])
print("number Long Position date transaction : ", len(result["002611"]["testData"]["Long_Position_date_transaction"]))
print("number Short Selling date transaction : ", len(result["002611"]["testData"]["Short_Selling_date_transaction"]))
print("weight MarketTiming : ", result["002611"]["testData"]["weight_MarketTiming"])  # 擇時權重，每兩次對衝交易的盈利概率占比;
print(result["002611"]["testData"]["P1_Array"])
print(result["002611"]["testData"]["Long_Position_date_transaction"])
print(result["002611"]["testData"]["Short_Selling_date_transaction"])
print(result["002611"]["testData"])
```

5. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_PickStock.py`」内函數 ( Function ) 運行示例 :
```
return_PickStock_fit_model = PickStock_fit_model(
    {
        "600118": training_data["600118"],
        "600119": training_data["600119"],
        "600120": training_data["600120"],
        "002607": training_data["002607"],
        "002608": training_data["002608"],
        "002609": training_data["002609"],
        "002611": training_data["002611"]
    },  # {}  # 標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    int(3),  # Parameter-1,  # 觀察收益率歷史向前推的交易日長度;
    int(10),  # Parameter-2  # 依據市值高低分組選股的分類數目;
    MarketTiming_Parameter,  # {}  # 按照擇時規則優化之後的參數字典;
    MarketTiming,  # lambda argument : argument,
    MarketTiming_fit_model,  # lambda argument : argument,
    Intuitive_Momentum_KLine,  # lambda argument : argument,
    "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("y_profit = ", return_PickStock_fit_model["y_profit"])  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
print("y_Long_Position_profit = ", return_PickStock_fit_model["y_Long_Position_profit"])  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
print("y_Short_Selling_profit = ", return_PickStock_fit_model["y_Short_Selling_profit"])  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
print("y_loss = ", return_PickStock_fit_model["y_loss"])  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
print("y_Long_Position_loss = ", return_PickStock_fit_model["y_Long_Position_loss"])  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
print("y_Short_Selling_loss = ", return_PickStock_fit_model["y_Short_Selling_loss"])  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
print("maximum_drawdown = ", return_PickStock_fit_model["maximum_drawdown"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum_drawdown_Long_Position = ", return_PickStock_fit_model["maximum_drawdown_Long_Position"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum_drawdown_Short_Selling = ", return_PickStock_fit_model["maximum_drawdown_Short_Selling"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("profit_total = ", return_PickStock_fit_model["profit_total"])  # 每兩次對衝交易利潤 × 權重，纍加總計;
print("Long_Position_profit_total = ", return_PickStock_fit_model["Long_Position_profit_total"])  # 每兩次對衝交易利潤 × 權重，纍加總計;
print("Short_Selling_profit_total = ", return_PickStock_fit_model["Short_Selling_profit_total"])  # 每兩次對衝交易利潤 × 權重，纍加總計;
print("profit_Positive = ", return_PickStock_fit_model["profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("profit_Negative = ", return_PickStock_fit_model["profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("Long_Position_profit_Positive = ", return_PickStock_fit_model["Long_Position_profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("Long_Position_profit_Negative = ", return_PickStock_fit_model["Long_Position_profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("Short_Selling_profit_Positive = ", return_PickStock_fit_model["Short_Selling_profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("Short_Selling_profit_Negative = ", return_PickStock_fit_model["Short_Selling_profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("profit_Positive_probability = ", return_PickStock_fit_model["profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("profit_Negative_probability = ", return_PickStock_fit_model["profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("Long_Position_profit_Positive_probability = ", return_PickStock_fit_model["Long_Position_profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("Long_Position_profit_Negative_probability = ", return_PickStock_fit_model["Long_Position_profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("Short_Selling_profit_Positive_probability = ", return_PickStock_fit_model["Short_Selling_profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("Short_Selling_profit_Negative_probability = ", return_PickStock_fit_model["Short_Selling_profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("average_price_amplitude_date_transaction = ", return_PickStock_fit_model["average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("Long_Position_average_price_amplitude_date_transaction = ", return_PickStock_fit_model["Long_Position_average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("Short_Selling_average_price_amplitude_date_transaction = ", return_PickStock_fit_model["Short_Selling_average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("average_volume_turnover_date_transaction = ", return_PickStock_fit_model["average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("Long_Position_average_volume_turnover_date_transaction = ", return_PickStock_fit_model["Long_Position_average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("Short_Selling_average_volume_turnover_date_transaction = ", return_PickStock_fit_model["Short_Selling_average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("average_date_transaction_between = ", return_PickStock_fit_model["average_date_transaction_between"])  # 兩次交易間隔日長，均值;
print("Long_Position_average_date_transaction_between = ", return_PickStock_fit_model["Long_Position_average_date_transaction_between"])  # 兩次對衝交易間隔日長，均值;
print("Short_Selling_average_date_transaction_between = ", return_PickStock_fit_model["Short_Selling_average_date_transaction_between"])  # 兩次對衝交易間隔日長，均值;
print("number_PickStock_transaction = ", return_PickStock_fit_model["number_PickStock_transaction"])  # 交易過股票的總隻數;
print("weight_PickStock = ", return_PickStock_fit_model["weight_PickStock"])  # 選股權重，每隻股票的盈利概率占比;
print(return_PickStock_fit_model["PickStock_sort"])  # 依照選股規則排序篩選出的股票代碼字符串和得分存儲字典（Dict）;
print(return_PickStock_fit_model["PickStock_sort"]["ticker_symbol"])  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
print(return_PickStock_fit_model["PickStock_sort"]["score"])  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
print(return_PickStock_fit_model["PickStock_transaction_sequence"])
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"])
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_profit_date_transaction"])  # 每兩次對衝交易利潤，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_profit_date_transaction"])  # 每兩次對衝交易利潤，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_price_amplitude_date_transaction"])  # 兩次對衝交易日成交價振幅平方和，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_price_amplitude_date_transaction"])  # 兩次對衝交易日成交價振幅平方和，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction_between"])  # 兩次對衝交易間隔日長，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction_between"])  # 兩次對衝交易間隔日長，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"])  # 按規則執行交易的日期，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][0])  # 交易規則自動選取的交易日期;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][1])  # 交易規則自動選取的買入或賣出;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][2])  # 交易規則自動選取的成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][3])  # 交易規則自動選取的成交量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][4])  # 交易規則自動選取的成交次數記錄;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][5])  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][6])  # 交易日（Dates.Date 類型）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][7])  # 當日總成交量（turnover volume）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][8])  # 當日開盤（opening）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][9])  # 當日收盤（closing）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][10])  # 當日最低（low）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][11])  # 當日最高（high）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][12])  # 當日總成交金額（turnover amount）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][13])  # 當日成交量（turnover volume）換手率（turnover rate）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][14])  # 當日每股收益（price earnings）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][15])  # 當日每股净值（book value per share）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"])  # 按規則執行交易的日期，向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][0])  # 交易規則自動選取的交易日期;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][1])  # 交易規則自動選取的買入或賣出;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][2])  # 交易規則自動選取的成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][3])  # 交易規則自動選取的成交量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][4])  # 交易規則自動選取的成交次數記錄;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][5])  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][6])  # 交易日（Dates.Date 類型）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][7])  # 當日總成交量（turnover volume）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][8])  # 當日開盤（opening）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][9])  # 當日收盤（closing）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][10])  # 當日最低（low）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][11])  # 當日最高（high）成交價;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][12])  # 當日總成交金額（turnover amount）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][13])  # 當日成交量（turnover volume）換手率（turnover rate）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][14])  # 當日每股收益（price earnings）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][15])  # 當日每股净值（book value per share）;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["revenue_and_expenditure_records_date_transaction"])  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
print(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["P1_Array"])  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
```
```
result = PickStock(
    training_data = {
        "600118": training_data["600118"],
        "600119": training_data["600119"],
        "600120": training_data["600120"],
        "002607": training_data["002607"],
        "002608": training_data["002608"],
        "002609": training_data["002609"],
        "002611": training_data["002611"]
    },  # {}  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    testing_data = {
        "600118": testing_data["600118"],
        "600119": testing_data["600119"],
        "600120": testing_data["600120"],
        "002607": testing_data["002607"],
        "002608": testing_data["002608"],
        "002609": testing_data["002609"],
        "002611": testing_data["002611"]
    },  # {}  # 測試集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    Pdata_0 = [int(3), int(5)],  # training_data["002611"]["Pdata_0"],  # 優化迭代參數初值;
    weight = []  # training_data["002611"]["weight"],  # 優化迭代數據權重值;
    Plower = [-math.inf, -math.inf],  # training_data["002611"]["Plower"],  # 優化迭代參數值約束下限;
    Pupper = [+math.inf, +math.inf],  # training_data["002611"]["Pupper"],  # 優化迭代參數值約束上限;
    MarketTiming_Parameter = MarketTiming_Parameter,  # {}  # 按照擇時規則優化之後的參數字典;
    PickStock_fit_model = PickStock_fit_model,  # lambda argument : argument,
    MarketTiming = MarketTiming,  # lambda argument : argument,
    MarketTiming_fit_model = MarketTiming_fit_model,  # lambda argument : argument,
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # lambda argument : argument,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("Coefficient : ", result["Coefficient"])  # 優化得到的參數;
print(result["PickStock_sort"]["ticker_symbol"])  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
print(result["PickStock_sort"]["score"])  # 依照選股規則排序篩選出的股票得分值存儲數組;
print("maximum drawdown per share : ", result["testData"]["maximum_drawdown"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum drawdown Long Position per share : ", result["testData"]["maximum_drawdown_Long_Position"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum drawdown Short Selling per share : ", result["testData"]["maximum_drawdown_Short_Selling"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("profit total per share : ", result["testData"]["profit_total"])
print("Long Position profit total per share : ", result["testData"]["Long_Position_profit_total"])
print("Short Selling profit total per share : ", result["testData"]["Short_Selling_profit_total"])
print("profit positive per share : ", result["testData"]["profit_Positive"])
print("profit negative per share : ", result["testData"]["profit_Negative"])
print("Long Position profit positive per share : ", result["testData"]["Long_Position_profit_Positive"])
print("Long Position profit negative per share : ", result["testData"]["Long_Position_profit_Negative"])
print("Short Selling profit positive per share : ", result["testData"]["Short_Selling_profit_Positive"])
print("Short Selling profit negative per share : ", result["testData"]["Short_Selling_profit_Negative"])
print("profit positive probability : ", result["testData"]["profit_Positive_probability"])
print("profit negative probability : ", result["testData"]["profit_Negative_probability"])
print("Long Position profit positive probability : ", result["testData"]["Long_Position_profit_Positive_probability"])
print("Long Position profit negative probability : ", result["testData"]["Long_Position_profit_Negative_probability"])
print("Short Selling profit positive probability : ", result["testData"]["Short_Selling_profit_Positive_probability"])
print("Short Selling profit negative probability : ", result["testData"]["Short_Selling_profit_Negative_probability"])
print("average date transaction between : ", result["testData"]["average_date_transaction_between"])
print("Long Position average date transaction between : ", result["testData"]["Long_Position_average_date_transaction_between"])
print("Short Selling average date transaction between : ", result["testData"]["Short_Selling_average_date_transaction_between"])
print("number_PickStock_transaction : ", result["testData"]["number_PickStock_transaction"])  # 交易過股票的總隻數;
print("weight_PickStock : ", result["testData"]["weight_PickStock"])  # 選股權重，每隻股票的盈利概率占比;
print(result["testData"]["PickStock_transaction_sequence"]["002611"]["P1_Array"])
print(result["testData"]["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"])
print(result["testData"]["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"])
print(result["testData"]["PickStock_transaction_sequence"]["002611"])
```

6. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_SizePosition.py`」内函數 ( Function ) 運行示例 :
```
return_SizePosition_fit_model = SizePosition_fit_model(
    {
        "600118": training_data["600118"],
        "600119": training_data["600119"],
        "600120": training_data["600120"],
        "002607": training_data["002607"],
        "002608": training_data["002608"],
        "002609": training_data["002609"],
        "002611": training_data["002611"]
    },  # {}  # 標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    weight_MarketTiming_Dict,  # {},  # 股票擇時交易倉位占比;
    weight_PickStock_Dict,  # {},  # 選股組合占比;
    MarketTiming_Parameter,  # {},  # 按照擇時規則優化之後的參數字典;
    PickStock_Parameter,  # {},  # 按照選股規則優化之後的參數字典;
    PickStock_ticker_symbol,  # [],  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
    PickStock,  # lambda argument : argument,
    PickStock_fit_model,  # lambda argument : argument,
    MarketTiming,  # lambda argument : argument,
    MarketTiming_fit_model,  # lambda argument : argument,
    Intuitive_Momentum_KLine,  # lambda argument : argument,
    "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("y_profit = ", return_SizePosition_fit_model["y_profit"])  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
print("y_Long_Position_profit = ", return_SizePosition_fit_model["y_Long_Position_profit"])  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
print("y_Short_Selling_profit = ", return_SizePosition_fit_model["y_Short_Selling_profit"])  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
print("y_loss = ", return_SizePosition_fit_model["y_loss"])  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
print("y_Long_Position_loss = ", return_SizePosition_fit_model["y_Long_Position_loss"])  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
print("y_Short_Selling_loss = ", return_SizePosition_fit_model["y_Short_Selling_loss"])  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
print("maximum_drawdown = ", return_SizePosition_fit_model["maximum_drawdown"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum_drawdown_Long_Position = ", return_SizePosition_fit_model["maximum_drawdown_Long_Position"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum_drawdown_Short_Selling = ", return_SizePosition_fit_model["maximum_drawdown_Short_Selling"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("profit_total = ", return_SizePosition_fit_model["profit_total"])  # 每兩次對衝交易利潤 × 頻率，纍加總計;
print("Long_Position_profit_total = ", return_SizePosition_fit_model["Long_Position_profit_total"])  # 每兩次對衝交易利潤 × 頻率，纍加總計;
print("Short_Selling_profit_total = ", return_SizePosition_fit_model["Short_Selling_profit_total"])  # 每兩次對衝交易利潤 × 頻率，纍加總計;
print("profit_Positive = ", return_SizePosition_fit_model["profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("profit_Negative = ", return_SizePosition_fit_model["profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("Long_Position_profit_Positive = ", return_SizePosition_fit_model["Long_Position_profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("Long_Position_profit_Negative = ", return_SizePosition_fit_model["Long_Position_profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("Short_Selling_profit_Positive = ", return_SizePosition_fit_model["Short_Selling_profit_Positive"])  # 每兩次對衝交易收益纍加總計;
print("Short_Selling_profit_Negative = ", return_SizePosition_fit_model["Short_Selling_profit_Negative"])  # 每兩次對衝交易損失纍加總計;
print("profit_Positive_probability = ", return_SizePosition_fit_model["profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("profit_Negative_probability = ", return_SizePosition_fit_model["profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("Long_Position_profit_Positive_probability = ", return_SizePosition_fit_model["Long_Position_profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("Long_Position_profit_Negative_probability = ", return_SizePosition_fit_model["Long_Position_profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("Short_Selling_profit_Positive_probability = ", return_SizePosition_fit_model["Short_Selling_profit_Positive_probability"])  # 每兩次對衝交易正利潤概率;
print("Short_Selling_profit_Negative_probability = ", return_SizePosition_fit_model["Short_Selling_profit_Negative_probability"])  # 每兩次對衝交易負利潤概率;
print("average_price_amplitude_date_transaction = ", return_SizePosition_fit_model["average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("Long_Position_average_price_amplitude_date_transaction = ", return_SizePosition_fit_model["Long_Position_average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("Short_Selling_average_price_amplitude_date_transaction = ", return_SizePosition_fit_model["Short_Selling_average_price_amplitude_date_transaction"])  # 兩兩次對衝交易日成交價振幅平方和，均值;
print("average_volume_turnover_date_transaction = ", return_SizePosition_fit_model["average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("Long_Position_average_volume_turnover_date_transaction = ", return_SizePosition_fit_model["Long_Position_average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("Short_Selling_average_volume_turnover_date_transaction = ", return_SizePosition_fit_model["Short_Selling_average_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）均值;
print("average_date_transaction_between = ", return_SizePosition_fit_model["average_date_transaction_between"])  # 兩次交易間隔日長，均值;
print("Long_Position_average_date_transaction_between = ", return_SizePosition_fit_model["Long_Position_average_date_transaction_between"])  # 兩次對衝交易間隔日長，均值;
print("Short_Selling_average_date_transaction_between = ", return_SizePosition_fit_model["Short_Selling_average_date_transaction_between"])  # 兩次對衝交易間隔日長，均值;
print("number_SizePosition_transaction = ", return_SizePosition_fit_model["number_PickStock_transaction"])  # 交易過股票的總隻數;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"])
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_profit_date_transaction"])  # 每兩次對衝交易利潤，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_profit_date_transaction"])  # 每兩次對衝交易利潤，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_price_amplitude_date_transaction"])  # 兩次對衝交易日成交價振幅平方和，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_price_amplitude_date_transaction"])  # 兩次對衝交易日成交價振幅平方和，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_volume_turnover_date_transaction"])  # 兩次對衝交易日成交量（換手率）向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction_between"])  # 兩次對衝交易間隔日長，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction_between"])  # 兩次對衝交易間隔日長，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"])  # 按規則執行交易的日期，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][0])  # 交易規則自動選取的交易日期;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][1])  # 交易規則自動選取的買入或賣出;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][2])  # 交易規則自動選取的成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][3])  # 交易規則自動選取的成交量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][4])  # 交易規則自動選取的成交次數記錄;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][5])  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][6])  # 交易日（Dates.Date 類型）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][7])  # 當日總成交量（turnover volume）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][8])  # 當日開盤（opening）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][9])  # 當日收盤（closing）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][10])  # 當日最低（low）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][11])  # 當日最高（high）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][12])  # 當日總成交金額（turnover amount）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][13])  # 當日成交量（turnover volume）換手率（turnover rate）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][14])  # 當日每股收益（price earnings）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][15])  # 當日每股净值（book value per share）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"])  # 按規則執行交易的日期，向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][0])  # 交易規則自動選取的交易日期;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][1])  # 交易規則自動選取的買入或賣出;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][2])  # 交易規則自動選取的成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][3])  # 交易規則自動選取的成交量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][4])  # 交易規則自動選取的成交次數記錄;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][5])  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][6])  # 交易日（Dates.Date 類型）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][7])  # 當日總成交量（turnover volume）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][8])  # 當日開盤（opening）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][9])  # 當日收盤（closing）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][10])  # 當日最低（low）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][11])  # 當日最高（high）成交價;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][12])  # 當日總成交金額（turnover amount）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][13])  # 當日成交量（turnover volume）換手率（turnover rate）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][14])  # 當日每股收益（price earnings）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][15])  # 當日每股净值（book value per share）;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["revenue_and_expenditure_records_date_transaction"])  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
print(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["P1_Array"])  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
```
```
result = SizePosition(
    training_data = {
        "600118": training_data["600118"],
        "600119": training_data["600119"],
        "600120": training_data["600120"],
        "002607": training_data["002607"],
        "002608": training_data["002608"],
        "002609": training_data["002609"],
        "002611": training_data["002611"]
    },  # {}  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    testing_data = {
        "600118": testing_data["600118"],
        "600119": testing_data["600119"],
        "600120": testing_data["600120"],
        "002607": testing_data["002607"],
        "002608": testing_data["002608"],
        "002609": testing_data["002609"],
        "002611": testing_data["002611"]
    },  # {}  # 測試集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    Pdata_0 = [weight_MarketTiming_Dict, weight_PickStock_Dict],  # training_data["002611"]["Pdata_0"],  # 優化迭代參數初值;
    weight = [],  # training_data["002611"]["weight"],  # 優化迭代數據權重值;
    Plower = [Plower_weight_MarketTiming_Dict, Plower_weight_PickStock_Dict],  # 優化迭代參數值約束下限;
    Pupper = [Pupper_weight_MarketTiming_Dict, Pupper_weight_PickStock_Dict],  # 優化迭代參數值約束上限;
    MarketTiming_Parameter = MarketTiming_Parameter,  # {},  # 按照擇時規則優化之後的參數字典;
    PickStock_Parameter = PickStock_Parameter,  # {},  # 按照選股規則優化之後的參數字典;
    PickStock_ticker_symbol = PickStock_ticker_symbol,  # [],  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
    SizePosition_fit_model = SizePosition_fit_model,  # lambda argument : argument,
    PickStock = PickStock,  # lambda argument : argument,
    PickStock_fit_model = PickStock_fit_model,  # lambda argument : argument,
    MarketTiming = MarketTiming,  # lambda argument : argument,
    MarketTiming_fit_model = MarketTiming_fit_model,  # lambda argument : argument,
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # lambda argument : argument,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("Coefficient 1 weight_MarketTiming : ", "\n", result["Coefficient"][0])  # 優化得到的參數;
print("Coefficient 2 weight_PickStock : ", "\n", result["Coefficient"][1])  # 優化得到的參數;
print("maximum drawdown per share : ", result["testData"]["maximum_drawdown"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum drawdown Long Position per share : ", result["testData"]["maximum_drawdown_Long_Position"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("maximum drawdown Short Selling per share : ", result["testData"]["maximum_drawdown_Short_Selling"])  # 兩次對衝交易之間的最大回撤值，取極值統計;
print("profit total per share : ", result["testData"]["profit_total"])
print("Long Position profit total per share : ", result["testData"]["Long_Position_profit_total"])
print("Short Selling profit total per share : ", result["testData"]["Short_Selling_profit_total"])
print("profit positive per share : ", result["testData"]["profit_Positive"])
print("profit negative per share : ", result["testData"]["profit_Negative"])
print("Long Position profit positive per share : ", result["testData"]["Long_Position_profit_Positive"])
print("Long Position profit negative per share : ", result["testData"]["Long_Position_profit_Negative"])
print("Short Selling profit positive per share : ", result["testData"]["Short_Selling_profit_Positive"])
print("Short Selling profit negative per share : ", result["testData"]["Short_Selling_profit_Negative"])
print("profit positive probability : ", result["testData"]["profit_Positive_probability"])
print("profit negative probability : ", result["testData"]["profit_Negative_probability"])
print("Long Position profit positive probability : ", result["testData"]["Long_Position_profit_Positive_probability"])
print("Long Position profit negative probability : ", result["testData"]["Long_Position_profit_Negative_probability"])
print("Short Selling profit positive probability : ", result["testData"]["Short_Selling_profit_Positive_probability"])
print("Short Selling profit negative probability : ", result["testData"]["Short_Selling_profit_Negative_probability"])
print("average date transaction between : ", result["testData"]["average_date_transaction_between"])
print("Long Position average date transaction between : ", result["testData"]["Long_Position_average_date_transaction_between"])
print("Short Selling average date transaction between : ", result["testData"]["Short_Selling_average_date_transaction_between"])
print("number_PickStock_transaction : ", result["testData"]["number_PickStock_transaction"])  # 交易過股票的總隻數;
print(result["testData"]["SizePosition_transaction_sequence"]["002611"]["P1_Array"])
print(result["testData"]["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"])
print(result["testData"]["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"])
print(result["testData"]["SizePosition_transaction_sequence"]["002611"])
```

7. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_BackTesting.py`」内函數 ( Function ) 運行示例 :
```
return_stepping_Dict = BackTesting_Stepper(
    steppingData = {
        "600118": training_data["600118"],
        "600119": training_data["600119"],
        "600120": training_data["600120"],
        "002607": training_data["002607"],
        "002608": training_data["002608"],
        "002609": training_data["002609"],
        "002611": training_data["002611"]
    },  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
    risk_threshold = float(0.8),  # risk_threshold_drawdown_loss,  # 自定義的風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    training_sequence_length = int(60),  # 推進分析（Stepper movement）（propulsion analysis）每一次步進，訓練集數據自定義的交易日截取長度;
    training_ticker_symbol = [str(item) for item in stepping_data.keys()]  # training_data_ticker_symbol_Array,  # 訓練集納入股票代碼字符串的一維數組，函數 dict.keys() 表示獲取字典的所有 key 值，返回值爲字符串列表（list）;
    testing_ticker_symbol = [str(item) for item in stepping_data.keys()]  # testing_data_ticker_symbol_Array,  # 訓練集納入股票代碼字符串的一維數組，函數 dict.keys() 表示獲取字典的所有 key 值，返回值爲字符串列表（list）;
    testing_sequence_length = int(1),  # 推進分析（Stepper movement）（propulsion analysis）每一次步進，測試集數據自定義的交易日截取長度;
    SizePosition = SizePosition,  # lambda argument : argument,
    SizePosition_fit_model = SizePosition_fit_model,  # lambda argument : argument,
    SizePosition_Pdata_0 = SizePosition_Parameter_Array,  # 倉位優化迭代參數初值;
    SizePosition_weight = [],  # [float(1.0) for i in 1:len(steppingData)],  # 倉位優化迭代數據權重值;
    SizePosition_Plower = [Plower_weight_MarketTiming_Dict, Plower_weight_PickStock_Dict],  # [-math.inf, -math.inf],  # 倉位優化迭代參數值約束下限;
    SizePosition_Pupper = [Pupper_weight_MarketTiming_Dict, Pupper_weight_PickStock_Dict],  # [+math.inf, +math.inf],  # 倉位優化迭代參數值約束上限;
    PickStock = PickStock,  # lambda argument : argument,
    PickStock_fit_model = PickStock_fit_model,  # lambda argument : argument,
    PickStock_Pdata_0 = [],  # [5, 3],  # PickStock_Parameter,  # 選股優化迭代參數初值;
    PickStock_weight = [],  # [float(1.0) for i in 1:len(steppingData)],  # 選股優化迭代數據權重值;
    PickStock_Plower = [int(1), int(1)],  # [-math.inf, -math.inf],  # 選股優化迭代參數值約束下限;
    PickStock_Pupper = [int([int(maximum_stepping_data) if int(maximum_stepping_data) > int(0) else int(1) for i in range(int(0), int(1), int(1))][int(0)]), int([int(maximum_ticker_symbol_stepping_data) if int(maximum_ticker_symbol_stepping_data) > int(0) else int(1) for i in range(int(0), int(1), int(1))][int(0)])],  # [+math.inf, +math.inf],  # 選股優化迭代參數值約束上限;
    MarketTiming = MarketTiming,  # lambda argument : argument,
    MarketTiming_fit_model = MarketTiming_fit_model,  # lambda argument : argument,
    MarketTiming_Pdata_0 = [],  # [5, 0.1, -0.1, 0.0],  # MarketTiming_Parameter,  # 擇時優化迭代參數初值;
    MarketTiming_weight = [],  # [float(1.0) for i in 1:len(steppingData)],  # 擇時優化迭代數據權重值;
    MarketTiming_Plower = [int(1), -math.inf, -math.inf, -math.inf],  # [-math.inf, -math.inf, -math.inf, -math.inf],  # 擇時優化迭代參數值約束下限;
    MarketTiming_Pupper = [int([int(maximum_stepping_data) if int(maximum_stepping_data) > int(0) else int(1) for i in range(int(0), int(1), int(1))][int(0)]), +math.inf, +math.inf, +math.inf],  # [+math.inf, +math.inf, +math.inf, +math.inf],  # 擇時優化迭代參數值約束上限;
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # lambda argument : argument,
    investment_method = investment_method  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
)
print("number PickStock : ", return_stepping_Dict["number_PickStock"])
print("number PickStock Long Position : ", return_stepping_Dict["number_PickStock_Long_Position"])
print("number PickStock Short Selling : ", return_stepping_Dict["number_PickStock_Short_Selling"])
print("number transaction : ", return_stepping_Dict["number_transaction_total"])
print("number transaction Long Position : ", return_stepping_Dict["number_transaction_total_Long_Position"])
print("number transaction Short Selling : ", return_stepping_Dict["number_transaction_total_Short_Selling"])
print("maximum drawdown : ", return_stepping_Dict["maximum_drawdown"])
print("maximum drawdown Long Position : ", return_stepping_Dict["maximum_drawdown_Long_Position"])
print("maximum drawdown Short Selling : ", return_stepping_Dict["maximum_drawdown_Short_Selling"])
print("profit total : ", return_stepping_Dict["profit_total"])
print("Long Position profit total : ", return_stepping_Dict["Long_Position_profit_total"])
print("Short Selling profit total : ", return_stepping_Dict["Short_Selling_profit_total"])
print("profit Positive : ", return_stepping_Dict["profit_Positive"])
print("profit Negative : ", return_stepping_Dict["profit_Negative"])
print("Long Position profit Positive : ", return_stepping_Dict["Long_Position_profit_Positive"])
print("Long Position profit Negative : ", return_stepping_Dict["Long_Position_profit_Negative"])
print("Short Selling profit Positive : ", return_stepping_Dict["Short_Selling_profit_Positive"])
print("Short Selling profit Negative : ", return_stepping_Dict["Short_Selling_profit_Negative"])
print("profit Positive probability : ", return_stepping_Dict["profit_Positive_probability"])
print("profit Negative probability : ", return_stepping_Dict["profit_Negative_probability"])
print("Long Position profit Positive probability : ", return_stepping_Dict["Long_Position_profit_Positive_probability"])
print("Long Position profit Negative probability : ", return_stepping_Dict["Long_Position_profit_Negative_probability"])
print("Short Selling profit Positive probability : ", return_stepping_Dict["Short_Selling_profit_Positive_probability"])
print("Short Selling profit Negative probability : ", return_stepping_Dict["Short_Selling_profit_Negative_probability"])
print("average price amplitude date transaction : ", return_stepping_Dict["average_price_amplitude_date_transaction"])
print("Long Position average price amplitude date transaction : ", return_stepping_Dict["Long_Position_average_price_amplitude_date_transaction"])
print("Short Selling average price amplitude date transaction : ", return_stepping_Dict["Short_Selling_average_price_amplitude_date_transaction"])
print("average volume turnover date transaction : ", return_stepping_Dict["average_volume_turnover_date_transaction"])
print("Long Position average volume turnover date transaction : ", return_stepping_Dict["Long_Position_average_volume_turnover_date_transaction"])
print("Short Selling average volume turnover date transaction : ", return_stepping_Dict["Short_Selling_average_volume_turnover_date_transaction"])
print("average date transaction between : ", return_stepping_Dict["average_date_transaction_between"])
print("Long Position average date transaction between : ", return_stepping_Dict["Long_Position_average_date_transaction_between"])
print("Short Selling average date transaction between : ", return_stepping_Dict["Short_Selling_average_date_transaction_between"])
print("PickStock Long Position Array :", "\n", return_stepping_Dict["PickStock_Long_Position"])
print("PickStock Short Selling Array :", "\n", return_stepping_Dict["PickStock_Short_Selling"])
print("PickStock Array :", "\n", return_stepping_Dict["PickStock"])
print("profit paired transaction Dict :", "\n", return_stepping_Dict["profit_paired_transaction"])
print("transaction sequence Dict :", "\n", return_stepping_Dict["transaction_sequence"])
print("stepping sequence Array :", "\n", return_stepping_Dict["stepping_sequence"])
```

---

Julia Explain : Quantitative_Indicators.jl , Quantitative_Data_Cleaning.jl , Quantitative_MarketTiming.jl , Quantitative_PickStock.jl , Quantitative_SizePosition.jl , Quantitative_BackTesting.jl

計算機程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 與作業系統 ( Operating System ) 環境配置釋明 :

Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30

Interpreter: julia-1.9.3-win64.exe

Interpreter: julia-1.10.4-linux-x86_64.tar.gz

Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280

Interpreter: julia-1.10.4-linux-aarch64.tar.gz

注意,

程式代碼脚本檔 `Interface.jl` 裏, 函數 `http_Server`, `http_Client` 使用了第三方模組 `HTTP.jl` , `JSON.jl` 擴展包 ( packages ) ,

程式代碼脚本檔 `StatisticalAlgorithmServer.jl` 和 `Router.jl` 裏, 函數 `do_data`, `do_Request`, `do_Response` 使用了第三方模組 `JSON.jl` 擴展包 ( packages ) ,

所以, 需事先安裝配置成功, 加載導入之後, 才能正常運行.

首先在作業系統 ( Operating System ) 控制臺命令列窗口 ( bash, cmd ) 啓動程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 進入語言 ( Julia ) 的運行環境 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/julia/julia-1.10.4/bin/julia --project=/home/StatisticalServer/StatisticalServerJulia/
```

微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\StatisticalServer> C:/StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe --project=C:/StatisticalServer/StatisticalServerJulia/
```

然後, 在程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 運行環境下, 安裝配置第三方擴展包 ( packages ) :

程式設計語言 ( Julia ) 的第三方擴展模組 HTTP.jl 安裝配置説明 :
```
julia> using Pkg
julia> Pkg.add("HTTP")
```
程式設計語言 ( Julia ) 的第三方擴展模組 HTTP.jl 加載導入説明 :
```
julia> using HTTP
```
程式設計語言 ( Julia ) 的第三方擴展模組 JSON.jl 安裝配置説明 :
```
julia> using Pkg
julia> Pkg.add("JSON")
```
程式設計語言 ( Julia ) 的第三方擴展模組 JSON.jl 加載導入説明 :
```
julia> using JSON
```

![]()

[程式設計 Julia 語言解釋器 ( Interpreter ) 第三方擴展模組 ( module ) ( packages ) 托管網站官方手冊](https://julialang.org/packages/): 
https://julialang.org/packages/

[程式設計 Julia 語言解釋器 ( Interpreter ) 官方 General.jl 模組 GitHub 網站倉庫頁](https://github.com/JuliaRegistries/General): 
https://github.com/JuliaRegistries/General.git

[程式設計 Julia 語言解釋器 ( Interpreter ) 第三方擴展模組 HTTP.jl 的官方 GitHub 網站倉庫頁](https://github.com/JuliaWeb/HTTP.jl): 
https://github.com/JuliaWeb/HTTP.jl.git

[程式設計 Julia 語言解釋器 ( Interpreter ) 第三方擴展模組 JSON.jl 的官方 GitHub 網站倉庫頁](https://github.com/JuliaIO/JSON.jl): 
https://github.com/JuliaIO/JSON.jl.git

![]()

Interpreter :

julia - 1.10.4

julia - 1.10.4 - packages :

&nbsp;&nbsp;&nbsp;&nbsp;Artifacts

&nbsp;&nbsp;&nbsp;&nbsp;Base64

&nbsp;&nbsp;&nbsp;&nbsp;BitFlags - 0.1.8

&nbsp;&nbsp;&nbsp;&nbsp;CodecZlib - 0.7.4

&nbsp;&nbsp;&nbsp;&nbsp;ConcurrentUtilities - 2.4.1

&nbsp;&nbsp;&nbsp;&nbsp;Dates

&nbsp;&nbsp;&nbsp;&nbsp;ExceptionUnwrapping - 0.1.10

&nbsp;&nbsp;&nbsp;&nbsp;HTTP - 1.10.8

&nbsp;&nbsp;&nbsp;&nbsp;InteractiveUtils

&nbsp;&nbsp;&nbsp;&nbsp;JLLWrappers - 1.5.0

&nbsp;&nbsp;&nbsp;&nbsp;JSON - 0.21.4

&nbsp;&nbsp;&nbsp;&nbsp;Libdl

&nbsp;&nbsp;&nbsp;&nbsp;Logging

&nbsp;&nbsp;&nbsp;&nbsp;LoggingExtras - 1.0.3

&nbsp;&nbsp;&nbsp;&nbsp;Markdown

&nbsp;&nbsp;&nbsp;&nbsp;MbedTLS - 1.1.9

&nbsp;&nbsp;&nbsp;&nbsp;MbedTLS_jll - 2.28.2+0

&nbsp;&nbsp;&nbsp;&nbsp;Mmap

&nbsp;&nbsp;&nbsp;&nbsp;MozillaCACerts_jll - 2022.10.11

&nbsp;&nbsp;&nbsp;&nbsp;NetworkOptions - 1.2.0

&nbsp;&nbsp;&nbsp;&nbsp;OpenSSL - 1.4.3

&nbsp;&nbsp;&nbsp;&nbsp;OpenSSL_jll - 3.0.13+1

&nbsp;&nbsp;&nbsp;&nbsp;Parsers - 2.8.1

&nbsp;&nbsp;&nbsp;&nbsp;PrecompileTools - 1.2.1

&nbsp;&nbsp;&nbsp;&nbsp;Preferences - 1.4.3

&nbsp;&nbsp;&nbsp;&nbsp;Printf

&nbsp;&nbsp;&nbsp;&nbsp;Random

&nbsp;&nbsp;&nbsp;&nbsp;SHA - 0.7.0

&nbsp;&nbsp;&nbsp;&nbsp;Serialization

&nbsp;&nbsp;&nbsp;&nbsp;SimpleBufferStream - 1.1.0

&nbsp;&nbsp;&nbsp;&nbsp;Sockets

&nbsp;&nbsp;&nbsp;&nbsp;TOML - 1.0.3

&nbsp;&nbsp;&nbsp;&nbsp;Test

&nbsp;&nbsp;&nbsp;&nbsp;TranscodingStreams - 0.10.9

&nbsp;&nbsp;&nbsp;&nbsp;TranscodingStreams.extensions

&nbsp;&nbsp;&nbsp;&nbsp;URIs - 1.5.1

&nbsp;&nbsp;&nbsp;&nbsp;UUIDs

&nbsp;&nbsp;&nbsp;&nbsp;Unicode

&nbsp;&nbsp;&nbsp;&nbsp;Zlib_jll - 1.2.13+0

![]()

[程式設計 Julia 語言解釋器 ( Interpreter ) 官方網站](https://julialang.org/): 
https://julialang.org/

[程式設計 Julia 語言解釋器 ( Interpreter ) 官方下載頁](https://julialang.org/downloads/): 
https://julialang.org/downloads/

[程式設計 Julia 語言解釋器 ( Interpreter ) 官方 GitHub 網站賬戶](https://github.com/JuliaLang): 
https://github.com/JuliaLang

[程式設計 Julia 語言解釋器 ( Interpreter ) 官方 GitHub 網站倉庫頁](https://github.com/JuliaLang/julia): 
https://github.com/JuliaLang/julia.git

[程式設計 Julia 語言解釋器 ( Interpreter ) 第三方擴展模組 ( module ) ( packages ) 托管網站官方手冊](https://julialang.org/packages/): 
https://julialang.org/packages/

[程式設計 Julia 語言解釋器 ( Interpreter ) 官方 General.jl 模組 GitHub 網站倉庫頁](https://github.com/JuliaRegistries/General): 
https://github.com/JuliaRegistries/General.git

![]()

程式設計 Julia 語言統計算法 ( algorithm ) 借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 説明 :

[Julia - LsqFit 官方手冊](https://julianlsolvers.github.io/LsqFit.jl/latest/): 
https://julianlsolvers.github.io/LsqFit.jl/latest/

[Julia - LsqFit 官方 GitHub 網站倉庫頁](https://github.com/JuliaNLSolvers/LsqFit.jl): 
https://github.com/JuliaNLSolvers/LsqFit.jl.git

[Julia - Interpolations 官方手冊](https://juliamath.github.io/Interpolations.jl/stable/): 
https://juliamath.github.io/Interpolations.jl/stable/

[Julia - Interpolations 官方 GitHub 網站倉庫頁](https://github.com/JuliaMath/Interpolations.jl): 
https://github.com/JuliaMath/Interpolations.jl.git

[Julia - DataInterpolations 官方手冊](https://docs.sciml.ai/DataInterpolations/stable/): 
https://docs.sciml.ai/DataInterpolations/stable/

[Julia - DataInterpolations 官方 GitHub 網站倉庫頁](https://github.com/SciML/DataInterpolations.jl): 
https://github.com/SciML/DataInterpolations.jl.git

[Julia - Roots 官方手冊](https://juliamath.github.io/Roots.jl/stable/): 
https://juliamath.github.io/Roots.jl/stable/

[Julia - Roots 官方 GitHub 網站倉庫頁](https://github.com/JuliaMath/Roots.jl): 
https://github.com/JuliaMath/Roots.jl.git

[Julia - ForwardDiff 官方手冊](https://juliadiff.org/ForwardDiff.jl/stable/): 
https://juliadiff.org/ForwardDiff.jl/stable/

[Julia - ForwardDiff 官方 GitHub 網站倉庫頁](https://github.com/JuliaDiff/ForwardDiff.jl): 
https://github.com/JuliaDiff/ForwardDiff.jl.git

[Julia - Optim 官方手冊](https://julianlsolvers.github.io/Optim.jl/stable/): 
https://julianlsolvers.github.io/Optim.jl/stable/

[Julia - Optim 官方 GitHub 網站倉庫頁](https://github.com/JuliaNLSolvers/Optim.jl.git): 
https://github.com/JuliaNLSolvers/Optim.jl

[Julia - JuMP 官方網站](https://jump.dev/): 
https://jump.dev/

[Julia - JuMP 官方手冊](https://jump.dev/JuMP.jl/stable/): 
https://jump.dev/JuMP.jl/stable/

[Julia - JuMP 官方 GitHub 網站倉庫頁](https://github.com/jump-dev/JuMP.jl): 
https://github.com/jump-dev/JuMP.jl.git

[Julia - Symbolics 官方手冊](https://docs.sciml.ai/Symbolics/stable/): 
https://docs.sciml.ai/Symbolics/stable/

[Julia - Symbolics 官方 GitHub 網站倉庫頁](https://github.com/JuliaSymbolics/Symbolics.jl): 
https://github.com/JuliaSymbolics/Symbolics.jl.git

[Julia - Gadfly 官方手冊](https://gadflyjl.org/stable/): 
https://gadflyjl.org/stable/

[Julia - Gadfly 官方 GitHub 網站倉庫頁](https://github.com/GiovineItalia/Gadfly.jl): 
https://github.com/GiovineItalia/Gadfly.jl.git

[Julia - Plots 官方手冊](https://docs.juliaplots.org/stable/): 
https://docs.juliaplots.org/stable/

[Julia - Plots 官方 GitHub 網站倉庫頁](https://github.com/JuliaPlots/Plots.jl): 
https://github.com/JuliaPlots/Plots.jl.git

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaPlots」項目官方 GitHub 網站賬戶](https://github.com/JuliaPlots): 
https://github.com/JuliaPlots

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「GiovineItalia」項目官方 GitHub 網站賬戶](https://github.com/GiovineItalia): 
https://github.com/GiovineItalia

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaMath」項目官方 GitHub 網站賬戶](https://github.com/JuliaMath): 
https://github.com/JuliaMath

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaNLSolvers」項目官方 GitHub 網站賬戶](https://github.com/JuliaNLSolvers): 
https://github.com/JuliaNLSolvers

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「SciML」項目官方 GitHub 網站賬戶](https://github.com/SciML): 
https://github.com/SciML

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaDiff」項目官方 GitHub 網站賬戶](https://github.com/JuliaDiff): 
https://github.com/JuliaDiff

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuMP」項目官方 GitHub 網站賬戶](https://github.com/jump-dev): 
https://github.com/jump-dev

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaSymbolics」項目官方 GitHub 網站賬戶](https://github.com/JuliaSymbolics): 
https://github.com/JuliaSymbolics

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaHub」項目官方 GitHub 網站賬戶](https://juliahub.com/): 
https://juliahub.com/

![]()

使用説明:

1. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl`」運行示例 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/julia/julia-1.10.4/bin/julia -p 4 --project=/QuantitativeTrading/QuantitativeTradingJulia/ /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt input_K_Line=/home/QuantitativeTrading/Data/K-Day-source/ is_save_JLD=false output_jld_K_Line=/home/QuantitativeTrading/Data/steppingData.jld is_save_csv=false output_csv_K_Line=/home/QuantitativeTrading/Data/K-Day/ is_save_xlsx=false output_xlsx_K_Line=/home/QuantitativeTrading/Data/K-Day/
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\StatisticalServer> C:/StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe -p 4 --project=C:/QuantitativeTrading/QuantitativeTradingJulia/ C:/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_JLD=true output_jld_K_Line=C:/QuantitativeTrading/Data/steppingData.jld is_save_csv=false output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=false output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/
```

2. 標準化日棒缐 ( K - Line ) 數據以程式設計語言 ( computer programming language ) : Julia 字典類型 ( Julia - Base.Dict ) 數據傳入，數據格式可類比如下 :

training_data = 
```
Base.Dict{Core.String, Core.Any}(
    Base.string("002607") => Base.Dict{Core.String, Core.Any}(
        Base.string("date_transaction") : Core.Array{Core.Union{Dates.Date, Dates.DateTime, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Dates.Date("2022-03-14") , Dates.Date("2022-03-15") , Dates.Date("2022-03-16") , ... ],
        Base.string("turnover_volume") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Int64(10002) , Core.Int64(10003) , Core.Int64(10001) , ... ],
        Base.string("opening_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.81) , Core.Float64(1.52) , Core.Float64(1.23) , ... ],
        Base.string("close_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.21) , Core.Float64(1.52) , Core.Float64(1.83) , ... ],
        Base.string("low_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.11) , Core.Float64(1.42) , Core.Float64(1.13) , ... ],
        Base.string("high_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.91) , Core.Float64(1.62) , Core.Float64(1.93) , ... ],
        ...
    ),
    Base.string("002608") => Base.Dict{Core.String, Core.Any}(
        Base.string("date_transaction") : Core.Array{Core.Union{Dates.Date, Dates.DateTime, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Dates.Date("2022-03-14") , Dates.Date("2022-03-15") , Dates.Date("2022-03-16") , ... ],
        Base.string("turnover_volume") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Int64(10002) , Core.Int64(10003) , Core.Int64(10001) , ... ],
        Base.string("opening_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.81) , Core.Float64(1.52) , Core.Float64(1.23) , ... ],
        Base.string("close_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.21) , Core.Float64(1.52) , Core.Float64(1.83) , ... ],
        Base.string("low_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.11) , Core.Float64(1.42) , Core.Float64(1.13) , ... ],
        Base.string("high_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.91) , Core.Float64(1.62) , Core.Float64(1.93) , ... ],
        ...
    ),
    Base.string("002609") => Base.Dict{Core.String, Core.Any}(
        Base.string("date_transaction") : Core.Array{Core.Union{Dates.Date, Dates.DateTime, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Dates.Date("2022-03-14") , Dates.Date("2022-03-15") , Dates.Date("2022-03-16") , ... ],
        Base.string("turnover_volume") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Int64(10002) , Core.Int64(10003) , Core.Int64(10001) , ... ],
        Base.string("opening_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.81) , Core.Float64(1.52) , Core.Float64(1.23) , ... ],
        Base.string("close_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.21) , Core.Float64(1.52) , Core.Float64(1.83) , ... ],
        Base.string("low_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.11) , Core.Float64(1.42) , Core.Float64(1.13) , ... ],
        Base.string("high_price") : Core.Array{Core.Union{Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.String, Core.Nothing, Base.Missing}, 1}()[ Core.Float64(1.91) , Core.Float64(1.62) , Core.Float64(1.93) , ... ],
        ...
    ),
    ...
)
```

3. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.jl`」内函數 ( Function ) 運行示例 :
```
return_Intuitive_Momentum = Intuitive_Momentum(
    training_data["002611"]["close_price"],  # 時間序列 ( time series ) 數據一維數組 ( Julia - Base.Dict ) ;  # ::Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1},
    Core.Int64(3);  # 觀察收益率歷史向前推的交易日長度;  # Parameter-1;
    y_P_Positive = Core.Float64(1.0),  # Core.nothing,  # ::Core.Float64  # 增長率（正）的可能性（頻率）示意;
    y_P_Negative = Core.Float64(1.0),  # Core.nothing,  # ::Core.Float64  # 衰退率（負）的可能性（頻率）示意;
    weight = Core.Array{Core.Float64, 1}()  # Core.nothing  # [Core.Float64(Core.Int64(i) / Core.Int64(Parameter-1)) for i in 1:Core.Int64(Parameter-1)]  # 每計增長率的權重（weight）值，距離當下時長的倒數（直覺推理有效性示意）;
);
println("closing price growth rate", return_Intuitive_Momentum);
```
```
return_Intuitive_Momentum_KLine = Intuitive_Momentum_KLine(
    Base.Dict{Core.String, Core.Any}(
        "date_transaction" => training_data["002611"]["date_transaction"],  # 交易日期;
        "turnover_volume" => training_data["002611"]["turnover_volume"],  # 成交量;
        "opening_price" => training_data["002611"]["opening_price"],  # 開盤成交價;
        "close_price" => training_data["002611"]["close_price"],  # 收盤成交價;
        "low_price" => training_data["002611"]["low_price"],  # 最低成交價;
        "high_price" => training_data["002611"]["high_price"],  # 最高成交價;
        "focus" => training_data["002611"]["focus"],  # 當日成交價重心;
        "amplitude" => training_data["002611"]["amplitude"],  # 當日成交價絕對振幅;
        "amplitude_rate" => training_data["002611"]["amplitude_rate"],  # 當日成交價相對振幅（%）;
        "opening_price_Standardization" => training_data["002611"]["opening_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
        "closing_price_Standardization" => training_data["002611"]["closing_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
        "low_price_Standardization" => training_data["002611"]["low_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日最低成交價標準化值;
        "high_price_Standardization" => training_data["002611"]["high_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日最高成交價標準化值;
        "turnover_volume_growth_rate" => training_data["002611"]["turnover_volume_growth_rate"],  # 成交量的成長率;
        "opening_price_growth_rate" => training_data["002611"]["opening_price_growth_rate"],  # 開盤價的成長率;
        "closing_price_growth_rate" => training_data["002611"]["closing_price_growth_rate"],  # 收盤價的成長率;
        "closing_minus_opening_price_growth_rate" => training_data["002611"]["closing_minus_opening_price_growth_rate"],  # 收盤價減開盤價的成長率;
        "high_price_proportion" => training_data["002611"]["high_price_proportion"],  # 收盤價和開盤價裏的最大值占最高價的比例;
        "low_price_proportion" => training_data["002611"]["low_price_proportion"],  # 最低價占收盤價和開盤價裏的最小值的比例;
        "moving_average_3" => training_data["002611"]["moving_average_3"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）三日移動平均缐值;
        "moving_average_5" => training_data["002611"]["moving_average_5"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）五日移動平均缐值;
        "moving_average_10" => training_data["002611"]["moving_average_10"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）十日移動平均缐值;
        "turnover_rate" => training_data["002611"]["turnover_rate"]  # 成交量換手率;
    ),  # Base.Dict{Core.String, Core.Any}(),  # 標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    Core.Int64(3);  # 觀察收益率歷史向前推的交易日長度;  # Parameter-1;
    y_P_Positive = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 增長率（正）的可能性（頻率）示意;
    y_P_Negative = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 衰退率（負）的可能性（頻率）示意;
    weight = Core.nothing,  # Core.Array{Core.Float64, 1}()  # [Core.Float64(Core.Int64(i) / Core.Int64(Parameter-1)) for i in 1:Core.Int64(Parameter-1)],  # 每計增長率的權重（weight）值，距離當下時長的倒數（直覺推理有效性示意）;
    Intuitive_Momentum = Intuitive_Momentum  # (arguments) -> begin return arguments; end
);
println("turnover volume growth rate", return_Intuitive_Momentum_KLine["P1_turnover_volume_growth_rate"]);
println("opening price growth rate", return_Intuitive_Momentum_KLine["P1_opening_price_growth_rate"]);
println("closing price growth rate", return_Intuitive_Momentum_KLine["P1_closing_price_growth_rate"]);
println("closing minus opening price growth rate", return_Intuitive_Momentum_KLine["P1_closing_minus_opening_price_growth_rate"]);
println("high price proportion", return_Intuitive_Momentum_KLine["P1_high_price_proportion"]);
println("low price proportion", return_Intuitive_Momentum_KLine["P1_low_price_proportion"]);
println("intuitive momentum indicator", return_Intuitive_Momentum_KLine["P1_Intuitive_Momentum"]);
```

4. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.jl`」内函數 ( Function ) 運行示例 :
```
return_MarketTiming_fit_model = MarketTiming_fit_model(
    Base.Dict{Core.String, Core.Any}("002611" => training_data["002611"]),  # Base.Dict{Core.String, Core.Any}(),  # 標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    Core.Int64(10),  # 觀察收益率歷史向前推的交易日長度;  # Parameter-1;
    Core.Float64(+0.58),  # 買入閾值;  # Parameter-2;
    Core.Float64(-0.02),  # 賣出閾值;  # Parameter-3;
    Core.Float64(0.0),  # risk threshold drawdown loss;  # 風險控制閾值 Parameter-4;  # 强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("y_profit = ", return_MarketTiming_fit_model["002611"]["y_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
println("y_Long_Position_profit = ", return_MarketTiming_fit_model["002611"]["y_Long_Position_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
println("y_Short_Selling_profit = ", return_MarketTiming_fit_model["002611"]["y_Short_Selling_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
println("y_loss = ", return_MarketTiming_fit_model["002611"]["y_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
println("y_Long_Position_loss = ", return_MarketTiming_fit_model["002611"]["y_Long_Position_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
println("y_Short_Selling_loss = ", return_MarketTiming_fit_model["002611"]["y_Short_Selling_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
println("profit_total = ", return_MarketTiming_fit_model["002611"]["profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
println("profit_Positive = ", return_MarketTiming_fit_model["002611"]["profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("profit_Negative = ", return_MarketTiming_fit_model["002611"]["profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("Long_Position_profit_total = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
println("Long_Position_profit_Positive = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("Long_Position_profit_Negative = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("Short_Selling_profit_total = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
println("Short_Selling_profit_Positive = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("Short_Selling_profit_Negative = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("Long_Position_profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("Long_Position_profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("Short_Selling_profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("Short_Selling_profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println(return_MarketTiming_fit_model["002611"]["Long_Position_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
println("maximum_drawdown = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum_drawdown_Long_Position = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum_drawdown_Short_Selling = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("Long_Position_drawdown_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
println("Short_Selling_drawdown_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
println("average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("Long_Position_average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("Short_Selling_average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println(return_MarketTiming_fit_model["002611"]["Long_Position_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
println("average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("Long_Position_average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("Short_Selling_average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println(return_MarketTiming_fit_model["002611"]["Long_Position_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
println("average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["average_date_transaction_between"]);  # 兩次交易間隔日長，均值;
println("Long_Position_average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
println("Short_Selling_average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
println("weight_MarketTiming = ", return_MarketTiming_fit_model["002611"]["weight_MarketTiming"]);  # 擇時權重，每兩次對衝交易的盈利概率占比;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"]);  # 按規則執行交易的日期，向量;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][1]);  # 交易規則自動選取的交易日期;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][3]);  # 交易規則自動選取的成交價;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][4]);  # 交易規則自動選取的成交量;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][8]);  # 當日總成交量（turnover volume）;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][9]);  # 當日開盤（opening）成交價;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][10]);  # 當日收盤（closing）成交價;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][11]);  # 當日最低（low）成交價;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][12]);  # 當日最高（high）成交價;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][15]);  # 當日每股收益（price earnings）;
println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][16]);  # 當日每股净值（book value per share）;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"]);  # 按規則執行交易的日期，向量;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][1]);  # 交易規則自動選取的交易日期;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][3]);  # 交易規則自動選取的成交價;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][4]);  # 交易規則自動選取的成交量;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][8]);  # 當日總成交量（turnover volume）;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][9]);  # 當日開盤（opening）成交價;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][10]);  # 當日收盤（closing）成交價;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][11]);  # 當日最低（low）成交價;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][12]);  # 當日最高（high）成交價;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][15]);  # 當日每股收益（price earnings）;
println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][16]);  # 當日每股净值（book value per share）;
println(return_MarketTiming_fit_model["002611"]["revenue_and_expenditure_records_date_transaction"]);  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
println(return_MarketTiming_fit_model["002611"]["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
```
```
result = MarketTiming(
    training_data = Base.Dict{Core.String, Core.Any}("002611" => training_data["002611"]),  # Base.Dict{Core.String, Core.Any}(),  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    testing_data = Base.Dict{Core.String, Core.Any}("002611" => testing_data["002611"]),  # Base.Dict{Core.String, Core.Any}(),  # 測試集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    Pdata_0 = [Core.Int64(3), Core.Float64(+0.1), Core.Float64(-0.1), Core.Float64(0.0)],  #training_data["002611"]["Pdata_0"],  # 優化迭代參數初值;
    weight = Core.Array{Core.Float64, 1}(),  # training_data["002611"]["weight"],  # 優化迭代數據權重值;
    Plower = [-Base.Inf, -Base.Inf, -Base.Inf, -Base.Inf],  # training_data["002611"]["Plower"],  # 優化迭代參數值約束下限;
    Pupper = [+Base.Inf, +Base.Inf, +Base.Inf, +Base.Inf],  # training_data["002611"]["Pupper"],  # 優化迭代參數值約束上限;
    MarketTiming_fit_model = MarketTiming_fit_model,  # (arguments) -> begin return arguments; end,
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("Coefficient : ", result["002611"]["Coefficient"]);  # 優化得到的參數;
println(result["002611"]["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
println("profit total per share : ", result["002611"]["testData"]["profit_total"]);
println("profit positive per share : ", result["002611"]["testData"]["profit_Positive"]);
println("profit negative per share : ", result["002611"]["testData"]["profit_Negative"]);
println("Long Position profit total per share : ", result["002611"]["testData"]["Long_Position_profit_total"]);
println("Long Position profit positive per share : ", result["002611"]["testData"]["Long_Position_profit_Positive"]);
println("Long Position profit negative per share : ", result["002611"]["testData"]["Long_Position_profit_Negative"]);
println("Short Selling profit total per share : ", result["002611"]["testData"]["Short_Selling_profit_total"]);
println("Short Selling profit positive per share : ", result["002611"]["testData"]["Short_Selling_profit_Positive"]);
println("Short Selling profit negative per share : ", result["002611"]["testData"]["Short_Selling_profit_Negative"]);
println("maximum drawdown per share : ", result["002611"]["testData"]["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum drawdown Long Position per share : ", result["002611"]["testData"]["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum drawdown Short Selling per share : ", result["002611"]["testData"]["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("Long Position drawdown date transaction : ", result["002611"]["testData"]["Long_Position_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
println("Short Selling drawdown date transaction : ", result["002611"]["testData"]["Short_Selling_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
println("profit positive probability : ", result["002611"]["testData"]["profit_Positive_probability"]);
println("profit negative probability : ", result["002611"]["testData"]["profit_Negative_probability"]);
println("Long Position profit positive probability : ", result["002611"]["testData"]["Long_Position_profit_Positive_probability"]);
println("Long Position profit negative probability : ", result["002611"]["testData"]["Long_Position_profit_Negative_probability"]);
println("Short Selling profit positive probability : ", result["002611"]["testData"]["Short_Selling_profit_Positive_probability"]);
println("Short Selling profit negative probability : ", result["002611"]["testData"]["Short_Selling_profit_Negative_probability"]);
println("average date transaction between : ", result["002611"]["testData"]["average_date_transaction_between"]);
println("Long Position average date transaction between : ", result["002611"]["testData"]["Long_Position_average_date_transaction_between"]);
println("Short Selling average date transaction between : ", result["002611"]["testData"]["Short_Selling_average_date_transaction_between"]);
println("number Long Position date transaction : ", Base.length(result["002611"]["testData"]["Long_Position_date_transaction"]));
println("number Short Selling date transaction : ", Base.length(result["002611"]["testData"]["Short_Selling_date_transaction"]));
println("weight MarketTiming : ", result["002611"]["testData"]["weight_MarketTiming"]);  # 擇時權重，每兩次對衝交易的盈利概率占比;
println(result["002611"]["testData"]["P1_Array"]);
println(result["002611"]["testData"]["Long_Position_date_transaction"]);
println(result["002611"]["testData"]["Short_Selling_date_transaction"]);
println(result["002611"]["testData"]);
```

5. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.jl`」内函數 ( Function ) 運行示例 :
```
return_PickStock_fit_model = PickStock_fit_model(
    Base.Dict{Core.String, Core.Any}(
        "600118" => training_data["600118"],
        "600119" => training_data["600119"],
        "600120" => training_data["600120"],
        "002607" => training_data["002607"],
        "002608" => training_data["002608"],
        "002609" => training_data["002609"],
        "002611" => training_data["002611"]
    ),  Base.Dict{Core.String, Core.Any}(),  # 標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    Core.Int64(3),  # 觀察收益率歷史向前推的交易日長度;  # Parameter-1;
    Core.Int64(10),  # 依據市值高低分組選股的分類數目;  # Parameter-2;
    MarketTiming_Parameter,  # Base.Dict{Core.String, Core.Any}(),  # 按照擇時規則優化之後的參數字典;
    MarketTiming,  # (arguments) -> begin return arguments; end,
    MarketTiming_fit_model,  # (arguments) -> begin return arguments; end,
    Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("y_profit = ", return_PickStock_fit_model["y_profit"]);  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
println("y_Long_Position_profit = ", return_PickStock_fit_model["y_Long_Position_profit"]);  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
println("y_Short_Selling_profit = ", return_PickStock_fit_model["y_Short_Selling_profit"]);  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
println("y_loss = ", return_PickStock_fit_model["y_loss"]);  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
println("y_Long_Position_loss = ", return_PickStock_fit_model["y_Long_Position_loss"]);  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
println("y_Short_Selling_loss = ", return_PickStock_fit_model["y_Short_Selling_loss"]);  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
println("maximum_drawdown = ", return_PickStock_fit_model["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum_drawdown_Long_Position = ", return_PickStock_fit_model["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum_drawdown_Short_Selling = ", return_PickStock_fit_model["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("profit_total = ", return_PickStock_fit_model["profit_total"]);  # 每兩次對衝交易利潤 × 權重，纍加總計;
println("Long_Position_profit_total = ", return_PickStock_fit_model["Long_Position_profit_total"]);  # 每兩次對衝交易利潤 × 權重，纍加總計;
println("Short_Selling_profit_total = ", return_PickStock_fit_model["Short_Selling_profit_total"]);  # 每兩次對衝交易利潤 × 權重，纍加總計;
println("profit_Positive = ", return_PickStock_fit_model["profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("profit_Negative = ", return_PickStock_fit_model["profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("Long_Position_profit_Positive = ", return_PickStock_fit_model["Long_Position_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("Long_Position_profit_Negative = ", return_PickStock_fit_model["Long_Position_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("Short_Selling_profit_Positive = ", return_PickStock_fit_model["Short_Selling_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("Short_Selling_profit_Negative = ", return_PickStock_fit_model["Short_Selling_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("profit_Positive_probability = ", return_PickStock_fit_model["profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("profit_Negative_probability = ", return_PickStock_fit_model["profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("Long_Position_profit_Positive_probability = ", return_PickStock_fit_model["Long_Position_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("Long_Position_profit_Negative_probability = ", return_PickStock_fit_model["Long_Position_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("Short_Selling_profit_Positive_probability = ", return_PickStock_fit_model["Short_Selling_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("Short_Selling_profit_Negative_probability = ", return_PickStock_fit_model["Short_Selling_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("average_price_amplitude_date_transaction = ", return_PickStock_fit_model["average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("Long_Position_average_price_amplitude_date_transaction = ", return_PickStock_fit_model["Long_Position_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("Short_Selling_average_price_amplitude_date_transaction = ", return_PickStock_fit_model["Short_Selling_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("average_volume_turnover_date_transaction = ", return_PickStock_fit_model["average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("Long_Position_average_volume_turnover_date_transaction = ", return_PickStock_fit_model["Long_Position_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("Short_Selling_average_volume_turnover_date_transaction = ", return_PickStock_fit_model["Short_Selling_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("average_date_transaction_between = ", return_PickStock_fit_model["average_date_transaction_between"]);  # 兩次交易間隔日長，均值;
println("Long_Position_average_date_transaction_between = ", return_PickStock_fit_model["Long_Position_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
println("Short_Selling_average_date_transaction_between = ", return_PickStock_fit_model["Short_Selling_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
println("number_PickStock_transaction = ", return_PickStock_fit_model["number_PickStock_transaction"]);  # 交易過股票的總隻數;
println("weight_PickStock = ", return_PickStock_fit_model["weight_PickStock"]);  # 選股權重，每隻股票的盈利概率占比;
println(return_PickStock_fit_model["PickStock_sort"]);  # 依照選股規則排序篩選出的股票代碼字符串和得分存儲字典（Dict）;
println(return_PickStock_fit_model["PickStock_sort"]["ticker_symbol"]);  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
println(return_PickStock_fit_model["PickStock_sort"]["score"]);  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]);
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]);
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"]);  # 按規則執行交易的日期，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][1]);  # 交易規則自動選取的交易日期;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][3]);  # 交易規則自動選取的成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][4]);  # 交易規則自動選取的成交量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][8]);  # 當日總成交量（turnover volume）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][9]);  # 當日開盤（opening）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][10]);  # 當日收盤（closing）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][11]);  # 當日最低（low）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][12]);  # 當日最高（high）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][15]);  # 當日每股收益（price earnings）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"][16]);  # 當日每股净值（book value per share）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"]);  # 按規則執行交易的日期，向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][1]);  # 交易規則自動選取的交易日期;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][3]);  # 交易規則自動選取的成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][4]);  # 交易規則自動選取的成交量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][8]);  # 當日總成交量（turnover volume）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][9]);  # 當日開盤（opening）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][10]);  # 當日收盤（closing）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][11]);  # 當日最低（low）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][12]);  # 當日最高（high）成交價;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][15]);  # 當日每股收益（price earnings）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][16]);  # 當日每股净值（book value per share）;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["revenue_and_expenditure_records_date_transaction"]);  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
println(return_PickStock_fit_model["PickStock_transaction_sequence"]["002611"]["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
```
```
result = PickStock(
    training_data = Base.Dict{Core.String, Core.Any}(
        "600118" => training_data["600118"],
        "600119" => training_data["600119"],
        "600120" => training_data["600120"],
        "002607" => training_data["002607"],
        "002608" => training_data["002608"],
        "002609" => training_data["002609"],
        "002611" => training_data["002611"]
    ),  # Base.Dict{Core.String, Core.Any}(),  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    testing_data = Base.Dict{Core.String, Core.Any}(
        "600118" => testing_data["600118"],
        "600119" => testing_data["600119"],
        "600120" => testing_data["600120"],
        "002607" => testing_data["002607"],
        "002608" => testing_data["002608"],
        "002609" => testing_data["002609"],
        "002611" => testing_data["002611"]
    ),  # Base.Dict{Core.String, Core.Any}(),  # 測試集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    Pdata_0 = [Core.Int64(3), Core.Int64(5)],  #training_data["002611"]["Pdata_0"],  # 優化迭代參數初值;
    weight = Core.Array{Core.Float64, 1}(),  # training_data["002611"]["weight"],  # 優化迭代數據權重值;
    Plower = [-Base.Inf, -Base.Inf],  # training_data["002611"]["Plower"],  # 優化迭代參數值約束下限;
    Pupper = [+Base.Inf, +Base.Inf],  # training_data["002611"]["Pupper"],  # 優化迭代參數值約束上限;
    MarketTiming_Parameter = MarketTiming_Parameter,  # Base.Dict{Core.String, Core.Any}(),  # 按照擇時規則優化之後的參數字典;
    PickStock_fit_model = PickStock_fit_model,  # (arguments) -> begin return arguments; end,
    MarketTiming = MarketTiming,  # (arguments) -> begin return arguments; end,
    MarketTiming_fit_model = MarketTiming_fit_model,  # (arguments) -> begin return arguments; end,
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("Coefficient : ", result["Coefficient"]);  # 優化得到的參數;
println(result["PickStock_sort"]["ticker_symbol"]);  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
println(result["PickStock_sort"]["score"]);  # 依照選股規則排序篩選出的股票得分值存儲數組;
println("maximum drawdown per share : ", result["testData"]["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum drawdown Long Position per share : ", result["testData"]["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum drawdown Short Selling per share : ", result["testData"]["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("profit total per share : ", result["testData"]["profit_total"]);
println("Long Position profit total per share : ", result["testData"]["Long_Position_profit_total"]);
println("Short Selling profit total per share : ", result["testData"]["Short_Selling_profit_total"]);
println("profit positive per share : ", result["testData"]["profit_Positive"]);
println("profit negative per share : ", result["testData"]["profit_Negative"]);
println("Long Position profit positive per share : ", result["testData"]["Long_Position_profit_Positive"]);
println("Long Position profit negative per share : ", result["testData"]["Long_Position_profit_Negative"]);
println("Short Selling profit positive per share : ", result["testData"]["Short_Selling_profit_Positive"]);
println("Short Selling profit negative per share : ", result["testData"]["Short_Selling_profit_Negative"]);
println("profit positive probability : ", result["testData"]["profit_Positive_probability"]);
println("profit negative probability : ", result["testData"]["profit_Negative_probability"]);
println("Long Position profit positive probability : ", result["testData"]["Long_Position_profit_Positive_probability"]);
println("Long Position profit negative probability : ", result["testData"]["Long_Position_profit_Negative_probability"]);
println("Short Selling profit positive probability : ", result["testData"]["Short_Selling_profit_Positive_probability"]);
println("Short Selling profit negative probability : ", result["testData"]["Short_Selling_profit_Negative_probability"]);
println("average date transaction between : ", result["testData"]["average_date_transaction_between"]);
println("Long Position average date transaction between : ", result["testData"]["Long_Position_average_date_transaction_between"]);
println("Short Selling average date transaction between : ", result["testData"]["Short_Selling_average_date_transaction_between"]);
println("number_PickStock_transaction : ", result["testData"]["number_PickStock_transaction"]);  # 交易過股票的總隻數;
println("weight_PickStock : ", result["testData"]["weight_PickStock"]);  # 選股權重，每隻股票的盈利概率占比;
println(result["testData"]["PickStock_transaction_sequence"]["002611"]["P1_Array"]);
println(result["testData"]["PickStock_transaction_sequence"]["002611"]["Long_Position_date_transaction"]);
println(result["testData"]["PickStock_transaction_sequence"]["002611"]["Short_Selling_date_transaction"]);
println(result["testData"]["PickStock_transaction_sequence"]["002611"]);
```

6. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.jl`」内函數 ( Function ) 運行示例 :
```

```
```

```

7. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.jl`」内函數 ( Function ) 運行示例 :
```

```



控制臺啓動傳參釋意, 各參數之間以一個空格字符 ( `SPACE` ) ( `00100000` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (自定義), 安裝配置的程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 環境的二進制可執行檔啓動存儲路徑全名, 預設值爲 :  `C:/StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe`

2. (必), (自定義), 語言 ( Julia ) 程式代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl` ) 的存儲路徑全名, 預設值爲 :  `C:/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl`

   注意, 因爲「`StatisticalAlgorithmServer.jl`」檔中脚本代碼需要加載引入「`Interface.jl`」檔, 所以需要保持「`StatisticalAlgorithmServer.jl`」檔與「`Interface.jl`」檔在相同目錄下, 不然就需要手動修改「`StatisticalAlgorithmServer.jl`」檔中有關引用「`Interface.jl`」檔的加載路徑代碼, 以確保能正確引入「`Interface.jl`」檔.

3. (選), (鍵 `configFile` 固定, 值 `C:/StatisticalServer/StatisticalServerJulia/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 預設值爲 :  `configFile=C:/StatisticalServer/StatisticalServerJulia/config.txt`

4. (選), (鍵 `interface_Function` 固定, 值 `file_Monitor` 自定義, [ `file_Monitor`, `http_Server`, `http_Client` ] 取其一), 用於傳入選擇啓動哪一種接口服務, 外設硬盤 ( Hard Disk ) 文檔 ( File ) 作橋, 外設網卡 ( Network Interface Card ) 埠 ( Port ) 作橋, 預設值爲 :  `interface_Function=file_Monitor`

以下是當參數 : `interface_Function` 取 : `http_Server` 值時, 可在控制臺命令列傳入的參數 :

7. (選), (鍵 `number_Worker_threads` 固定, 值 `0` 自定義), 用於傳入創建並發數目, 子進程 ( Sub Process ) 並發, 或者, 子缐程 ( Sub Threading ) 並發, 即, 可以設爲等於物理中央處理器 ( Central Processing Unit ) 的數目, 取 `0` 值表示不開啓並發架構, 預設值爲 :  `number_Worker_threads=0`

15. (選), (鍵 `host` 固定, 值 `::0` 自定義, 例如 [ `::0`, `::1`, `0.0.0.0`, `127.0.0.1`, `localhost` ] 取其一), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::0`

16. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 自定義設定的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

17. (選), (鍵 `key` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入自定義的訪問網站驗證 ( `Authorization` ) 用戶名和密碼, 預設值爲 :  `key=username:password`

18. (選), (鍵 `isConcurrencyHierarchy` 固定, 值 `Tasks` 自定義, 例如 [ `Tasks`, `Multi-Threading`, `Multi-Processes` ] 取其一), 用於選擇並發種類, 多進程 ( Process ) 並發, 或者, 多缐程 ( Threading ) 並發, 或者, 多協程 ( Tasks ) 並發, 當取值為多缐程 `Multi-Threading` 時，必須在啓動 Julia 解釋器之前，在控制臺命令行修改環境變量 : `export JULIA_NUM_THREADS=4(Linux OSX)` 或 `set JULIA_NUM_THREADS=4(Windows)` 來設置預創建多個缐程, 預設值爲 :  `isConcurrencyHierarchy=Tasks`

19. (選), (鍵 `webPath` 固定, 值 `C:/StatisticalServer/html/` 自定義), 用於傳入伺服器 ( `http_Server` ) 啓動運行的自定義的根目錄 (項目空間) 路徑全名, 預設值爲 :  `webPath=C:/StatisticalServer/html/`

20. (選), (鍵 `readtimeout` 固定, 值 `0` 自定義), 用於傳入客戶端請求數據讀取超時中止時長，單位 ( Unit ) 爲秒 ( Second ), 取 `0` 值表示不做判斷是否超時, 預設值爲 :  `readtimeout=0`

以下是當參數 : `interface_Function` 取 : `http_Client` 值時, 可在控制臺命令列傳入的參數 :

15. (選), (鍵 `host` 固定, 值 `::1` 自定義, 例如 [ `::1`, `127.0.0.1`, `localhost` ] 取其一), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::1`

16. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

21. (選), (鍵 `URL` 固定, 取值自定義, 例如配置爲 `http://[::1]:10001/index.html` 值), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的地址, 萬維網統一資源定位系統 ( Uniform Resource Locator ) 地址字符串, 預設值爲 :  `URL=""`

22. (選), (鍵 `proxy` 固定, 取值自定義, 例如配置爲 `http://[::1]:10001/index.html` 值), 當用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求時, 若需要代理轉發, 用於傳入轉發代理服務器的地址, 萬維網統一資源定位系統 ( Uniform Resource Locator ) 地址字符串, 預設值爲 :  `proxy=""`

23. (選), (鍵 `requestMethod` 固定, 值 `POST` 自定義, 例如 [ `POST`, `GET` ] 取其一), 用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的類型, 預設值爲 :  `requestMethod=POST`

20. (選), (鍵 `readtimeout` 固定, 值 `0` 自定義), 用於傳入服務端響應數據讀取超時中止時長，單位 ( Unit ) 爲秒 ( Second ), 取 `0` 值表示不做判斷是否超時, 預設值爲 :  `readtimeout=0`

24. (選), (鍵 `connecttimeout` 固定, 值 `0` 自定義), 用於傳入客戶端請求鏈接超時中止時長，單位 ( Unit ) 爲秒 ( Second ), 取 `0` 值表示不做判斷是否超時, 預設值爲 :  `connecttimeout=0`

25. (選), (鍵 `Authorization` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的驗證 ( Authorization ) 的賬號密碼字符串, 預設值爲 :  `Authorization=username:password`

26. (選), (鍵 `Cookie` 固定, 其中 `Cookie` 名稱 `Session_ID` 可以設計爲固定, `Cookie` 值 `request_Key->username:password` 可以設計爲自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的 `Cookies` 值字符串, 預設值爲 :  `Cookie=Session_ID=request_Key->username:password`

---

微軟視窗系統 ( Windows10 x86_64 ) 使用 Batchfile 代碼脚本檔「startServer.bat」啓動統計運算伺服器「StatisticalServer」 :

使用説明:

Window-cmd : startServer.bat

微軟視窗系統 ( Windows10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\StatisticalServer> C:/Windows/System32/cmd.exe C:/StatisticalServer/startServer.bat C:/StatisticalServer/config.txt
```

控制臺啓動傳參釋意 :

1. (必), (固定), 微軟視窗作業系統 ( Window10 x86_64 ) 控制臺命令列窗口的二進制可執行檔 ( `cmd.exe` ) 啓動存儲路徑全名, 作業系統 ( Window10 x86_64 ) 固定存儲在路徑爲 :  `C:/Windows/System32/cmd.exe`

2. (必), (自定義), 微軟視窗系統 ( Windows10 x86_64 ) 批處理程式代碼脚本 ( .bat ) 檔 ( `startServer.bat` ) 的存儲路徑全名, 預設值爲 :  `C:/StatisticalServer/startServer.bat`

3. (選) (值 `C:/StatisticalServer/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 配置文檔裏的橫向列首可用一個井號字符 ( `#` ) 注釋掉, 使用井號字符 ( `#` ) 注釋掉之後，該橫向列的參數即不會傳入從而失效, 若需啓用可刪除橫向列首的井號字符 ( `#` ) 即可, 注意橫向列首的空格也要刪除, 每一個橫向列的參數必須頂格書寫, 預設值爲 :  `C:/StatisticalServer/config.txt`

![]()

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 使用 Shell 代碼脚本檔「startServer.sh」啓動統計運算伺服器「StatisticalServer」 :

使用説明:

Android-Termux-Ubuntu-bash : startServer.sh

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /bin/bash /home/StatisticalServer/startServer.sh configFile=/home/StatisticalServer/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/ scriptFile=/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=/home/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

控制臺啓動傳參釋意, 各參數之間以一個逗號字符 ( `,` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (固定), 谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 控制臺命令列窗口的二進制可執行檔 ( `bash` ) 啓動存儲路徑全名, 作業系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 固定存儲在路徑爲 :  `/bin/bash`

2. (必), (自定義), 谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 批處理程式代碼脚本 ( .sh ) 檔 ( `startServer.sh` ) 的存儲路徑全名, 預設值爲 :  `C:/StatisticalServer/startServer.sh`

3. (選), (鍵 `configFile` 固定, 值 `/home/StatisticalServer/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 配置文檔裏的橫向列首可用一個井號字符 ( `#` ) 注釋掉, 使用井號字符 ( `#` ) 注釋掉之後，該橫向列的參數即不會傳入從而失效, 若需啓用可刪除橫向列首的井號字符 ( `#` ) 即可, 注意橫向列首的空格也要刪除, 每一個橫向列的參數必須頂格書寫, 預設值爲 :  `configFile=/home/StatisticalServer/config.txt`

4. (選), (鍵 `executableFile` 固定, 值 `/bin/julia` 自定義, 例如 [ `/bin/julia`, `/bin/python3` ] 可自定義取其一配置), 用於傳入選擇啓動哪一種程式語言編寫的接口服務, 計算機 ( Computer ) 程式 ( Programming ) 設計 Julia 語言, 計算機 ( Computer ) 程式 ( Programming ) 設計 Python 語言, 預設值爲 :  `executableFile=/bin/julia`

5. (選), (鍵 `interpreterFile` 固定, 值 `-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/` 自定義, 且可爲空, 即取 `interpreterFile=` 的形式, 亦可不傳入該參數), 用於傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 環境的二進制可執行檔, 於作業系統控制臺命令列 ( Operating System Console Command ) 使用指令啓動時傳入的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( `,` ) 字符連接, 批處理程式脚本 `startServer.sh` 已設計爲可自動將逗號 ( `,` ) 字符替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 的運行環境, 預設值爲 :  `interpreterFile=-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/`

6. (選), (鍵 `scriptFile` 固定, 值 `/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl` 自定義, 例如 [ `/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl`, `/home/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py` ] 可自定義取其一配置), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl`, `StatisticalAlgorithmServer.py` ) 的存儲路徑全名, 預設值爲 :  `scriptFile=/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl`

7. (選), (鍵 `configInstructions` 固定, 取值自定義, 且可爲空, 即取 `configInstructions=` 的形式, 亦可不傳入該參數), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl`, `StatisticalAlgorithmServer.py` ) 的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( `,` ) 字符連接, 批處理程式脚本 `startServer.sh` 已設計爲可自動將逗號 ( `,` ) 字符替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl`, `StatisticalAlgorithmServer.py` ) 的運行環境, 預設值爲 :  `configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=/home/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks`

---

c2exe.c

程式設計 C 語言, 使用 FILE *fstream = popen("shell Code Script", "r") 函數, 創建子進程 ( Sub Process ), 並在子進程 ( Sub Process ) 運行外部二進制可執行檔 ( julia.exe, python.exe, ), 功能與批處理檔 startServer.sh 類似.

使用説明:

![]()

微軟視窗系統 ( Windows10 x86_64 ) 使用二進位可執行檔「StatisticalServer.exe」啓動統計運算伺服器「StatisticalServer」 :

微軟視窗系統 ( Windows10 x86_64 )

Windows10 x86_64 Compiler :

Minimalist GNU on Windows ( MinGW-w64 ) mingw64-8.1.0-release-posix-seh-rt_v6-rev0

控制臺命令列 ( cmd ) 運行編譯指令 :
```
C:\StatisticalServer> C:\MinGW64\bin\gcc.exe C:/StatisticalServer/c/c2exe.c -o C:/StatisticalServer/StatisticalServer.exe
```

控制臺命令列 ( cmd ) 運行顯示中文字符指令 :
```
C:\StatisticalServer> chcp 65001
```

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\StatisticalServer> C:/StatisticalServer/StatisticalServer.exe configFile=C:/StatisticalServer/config.txt executableFile=C:/StatisticalServer/Julia/Julia-1.9.3/julia.exe interpreterFile=-p,4,--project=C:/StatisticalServer/StatisticalServerJulia/ scriptFile=C:/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=C:/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

![]()

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 使用二進位可執行檔「StatisticalServer.exe」啓動統計運算伺服器「StatisticalServer」 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

Android-11 Termux-0.118 Ubuntu-22.04 Arm64-aarch64 Compiler :

gcc v9.3.0 , g++ v9.3.0

控制臺命令列 ( bash ) 運行編譯指令 :
```
root@localhost:~# /bin/gcc /home/StatisticalServer/c/c2exe.c -o /home/StatisticalServer/StatisticalServer.exe
```

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /home/StatisticalServer/StatisticalServer.exe configFile=/home/StatisticalServer/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/ scriptFile=/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=/home/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

![]()

控制臺啓動傳參釋意, 各參數之間以一個逗號字符 ( `,` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (自定義), 計算機 C 語言 ( Computer Programming C Language ) 程式設計 ( Programming ) 代碼檔 ( `c2exe.c` ), 使用編譯器 ( Compiler ), 經過編譯之後, 轉換爲二進制可執行檔 ( .exe ), 啓動運行指令存儲路徑全名, 例如可自定義配置爲 :  `C:/StatisticalServer/StatisticalServer.exe`

2. (選) (值 `C:/StatisticalServer/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 配置文檔裏的橫向列首可用一個井號字符 ( `#` ) 注釋掉, 使用井號字符 ( `#` ) 注釋掉之後，該橫向列的參數即不會傳入從而失效, 若需啓用可刪除橫向列首的井號字符 ( `#` ) 即可, 注意橫向列首的空格也要刪除, 每一個橫向列的參數必須頂格書寫, 預設值爲 :  `C:/StatisticalServer/config.txt`

3. (選), (鍵 `executableFile` 固定, 值 `/bin/julia` 自定義, 例如 [ `/bin/julia`, `/bin/python3` ] 可自定義取其一配置), 用於傳入選擇啓動哪一種程式語言編寫的接口服務, 計算機 ( Computer ) 程式 ( Programming ) 設計 Julia 語言, 計算機 ( Computer ) 程式 ( Programming ) 設計 Python 語言, 預設值爲 :  `executableFile=/bin/julia`

4. (選), (鍵 `interpreterFile` 固定, 值 `-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/` 自定義, 且可爲空, 即取 `interpreterFile=` 的形式, 亦可不傳入該參數), 用於傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 環境的二進制可執行檔, 於作業系統控制臺命令列 ( Operating System Console Command ) 使用指令啓動時傳入的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( `,` ) 字符連接, 代碼文檔 `c2exe.c` 已設計爲可自動將逗號 ( `,` ) 字符替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 的運行環境, 預設值爲 :  `interpreterFile=-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/`

5. (選), (鍵 `scriptFile` 固定, 值 `/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl` 自定義, 例如 [ `/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl`, `/home/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py` ] 可自定義取其一配置), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl`, `StatisticalAlgorithmServer.py` ) 的存儲路徑全名, 預設值爲 :  `scriptFile=/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl`

6. (選), (鍵 `configInstructions` 固定, 取值自定義, 且可爲空, 即取 `configInstructions=` 的形式, 亦可不傳入該參數), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl`, `StatisticalAlgorithmServer.py` ) 的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( `,` ) 字符連接, 代碼文檔 `c2exe.c` 已設計爲可自動將逗號 ( `,` ) 字符替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.jl`, `StatisticalAlgorithmServer.py` ) 的運行環境, 預設值爲 :  `configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=/home/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks`

![]()

Compiler :

Minimalist GNU on Windows ( MinGW-w64 ) :  mingw64-8.1.0-release-posix-seh-rt_v6-rev0

[程式設計 C 語言 gcc, g++ 編譯器 ( Compiler ) 之 MinGW-w64 官方網站](https://www.mingw-w64.org/): 
https://www.mingw-w64.org/

[程式設計 C 語言 gcc, g++ 編譯器 ( Compiler ) 之 MinGW-w64 官方下載頁](https://www.mingw-w64.org/downloads/): 
https://www.mingw-w64.org/downloads/

[程式設計 C 語言 gcc, g++ 編譯器 ( Compiler ) 之 MinGW-w64 作者官方 GitHub 網站賬戶](https://github.com/niXman): 
https://github.com/niXman

[程式設計 C 語言 gcc, g++ 編譯器 ( Compiler ) 之 MinGW-w64 官方 GitHub 網站倉庫](https://github.com/nixman/mingw-builds): 
https://github.com/nixman/mingw-builds.git

[程式設計 C 語言 gcc, g++ 編譯器 ( Compiler ) 之 MinGW-w64 官方 GitHub 網站倉庫預編譯二進制檔下載頁](https://github.com/niXman/mingw-builds-binaries/releases): 
https://github.com/niXman/mingw-builds-binaries/releases

[程式設計 C 語言 gcc, g++ 編譯器 ( Compiler ) 之 MinGW-w64 預編譯二進制檔下載頁](https://sourceforge.net/projects/mingw-w64/): 
https://sourceforge.net/projects/mingw-w64/

---

一. 可使用谷歌 ( Google - Chromium ) 或火狐 ( Mozilla - Firefox ) 瀏覽器 ( Browser ) 作爲用戶端 ( Client ) 連接統計運算伺服器「StatisticalServer」打開交互介面.

打開應用頁面「index.html」可在地址欄 ( Browser address bar ) 輸入網址 ( Uniform Resource Locator , URL ) : 
```
http://username:password@[::1]:10001/index.html?Key=username:password
```

打開管理頁面「administrator.html」可在地址欄 ( Browser address bar ) 輸入網址 ( Uniform Resource Locator , URL ) : 
```
http://username:password@[::1]:10001/administrator.html?Key=username:password
```

交互頁面「`index.html`」可視化數據圖表，使用第三方擴展包，百度 ( Baidu ) 公司開發的基於 JavaScript 程式設計語言的開源可視化圖表庫「Apache - ECharts」實現.

可自行修改標準通用標記語言代碼脚本 ( .html ) 檔「`index.html`」「`SelectStatisticalAlgorithms.html`」「`InputHTML.html`」「`OutputHTML.html`」内的 HTML , JavaScript , CSS 代碼，擴展交互頁面「`index.html`」内統計方法的連接 ( Browser Client Request ) 選項.

二. 可使用項目空間内的微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」作爲用戶端 ( Client ) 連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 計算.

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」打開之後，菜單欄 ( Excel menu bar ) 之 :

1. 「`加載項 ( Excel Add-in )`」 → 「`統計運算 ( Statistics )`」 → 「`人機交互介面 ( operation panel )`」，爲連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 計算的操作面板.

2. 「`加載項 ( Excel Add-in )`」 → 「`統計運算 ( Statistics )`」 → 「`統計運算 ( Statistics server )`」，爲從微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔 ( `Client.xlsm` ) 内，通過創建子進程 ( Sub Process ) 調用微軟視窗系統 ( Windows10 x86_64 ) 控制臺命令列 ( `cmd.exe` ) 應用，啓動統計運算伺服器「`StatisticalServer`」的運行指令.

其中，項目空間内的代碼脚本檔「`StatisticsAlgorithmModule.bas`」是微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」運行時，需導入的標準模組 ( Module ) 代碼（必須），可在此代碼脚本檔内，自行修改 Visual Basic for Applications , VBA 代碼，擴展統計方法的連接 ( Client Request ) 項.

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「Client.xlsm」轉換 JSON 字符串類型的變量 ( JSON - String Object ) 與微軟電子表格字典類型的變量 ( Windows - Office - Excel - Visual Basic for Applications - Dict Object ) 數據類型，借用微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用的第三方擴展類模組「VBA-JSON : JsonConverter.bas」實現.

三. 也可自行選擇其他程式設計語言編寫用戶端鏈接器 ( Client ) 應用，連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 計算，比如，使用 JavaScript 語言的 NW.js , Electron 解析器等製作用戶端交互介面，或使用 C 語言的 GNU Image Manipulation Program - GIMP Toolkit , GTK+ 圖形框架等製作用戶端交互介面，然後，使用 Julia 或 Python 語言的統計運算伺服器「`StatisticalServer`」作爲後端行使數據計算功能，這樣即可實現類似跨語言混合編程的效果.

使用自行製作的用戶端鏈接器 ( Client ) 時，連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 計算，可使用如下網址 ( Uniform Resource Locator , URL ) : 

1. 連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 插值 ( Interpolation ) 計算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/Interpolation?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=BSpline(Cubic)&algorithmLambda=0.0&algorithmKei=2.0&algorithmDi=1.0&algorithmEith=1.0
```

3. 連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 多項式 ( 3 階 ) 方程 ( Polynomial ( Cubic ) ) 模型擬合 ( Fit ) 計算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/Polynomial3Fit?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=Polynomial3Fit
```

5. 連接統計運算伺服器「`StatisticalServer`」做 ( Client - Request ) 邏輯 4 , 5 參數模型 ( 4 , 5 - parameter logistic curve ) 擬合 ( Fit ) 計算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/LC5PFit?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=LC5PFit
```

用戶端 ( Client - Request ) 發送 POST 請求的數據爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Request - POST = 
```
{
    "trainXdata" : [
        0.0,
        1.0,
        2.0,
        3.0,
        4.0,
        5.0,
        6.0,
        7.0,
        8.0,
        9.0,
        10.0,
    ],
    "trainYdata_1" : [
        100.0,
        200.0,
        300.0,
        400.0,
        500.0,
        600.0,
        700.0,
        800.0,
        900.0,
        1000.0,
        1100.0
    ],
    "trainYdata_2" : [
        98.0,
        198.0,
        298.0,
        398.0,
        498.0,
        598.0,
        698.0,
        798.0,
        898.0,
        998.0,
        1098.0
    ],
    "trainYdata_3" : [
        102.0,
        202.0,
        302.0,
        402.0,
        502.0,
        602.0,
        702.0,
        802.0,
        902.0,
        1002.0,
        1102.0
    ],
    "weight" : [
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0,
        1.0
    ],
    "Pdata_0" : [
        90.0,
        4.0,
        1.0,
        1210.0,
        1.0
    ],
    "Plower" : [
        "-Infinity",
        "-Infinity",
        "-Infinity",
        "-Infinity",
        "-Infinity"
    ],
    "Pupper" : [
        "+Infinity",
        "+Infinity",
        "+Infinity",
        "+Infinity",
        "+Infinity"
    ],
    "testYdata_1" : [
        150.0,
        200.0,
        250.0,
        350.0,
        450.0,
        550.0,
        650.0,
        750.0,
        850.0,
        950.0,
        1050.0
    ],
    "testYdata_2" : [
        148.0,
        198.0,
        248.0,
        348.0,
        448.0,
        548.0,
        648.0,
        748.0,
        848.0,
        948.0,
        1048.0
    ],
    "testYdata_3" : [
        152.0,
        202.0,
        252.0,
        352.0,
        452.0,
        552.0,
        652.0,
        752.0,
        852.0,
        952.0,
        1052.0
    ],
    "testXdata" : [
        0.5,
        1.0,
        1.5,
        2.5,
        3.5,
        4.5,
        5.5,
        6.5,
        7.5,
        8.5,
        9.5
    ],
    "trainYdata" : [
        [100.0, 98.0, 102.0],
        [200.0, 198.0, 202.0],
        [300.0, 298.0, 302.0],
        [400.0, 398.0, 402.0],
        [500.0, 498.0, 502.0],
        [600.0, 598.0, 602.0],
        [700.0, 698.0, 702.0],
        [800.0, 798.0, 802.0],
        [900.0, 898.0, 902.0],
        [1000.0, 998.0, 1002.0],
        [1100.0, 1098.0, 1102.0]
    ],
    "testYdata" : [
        [150.0, 148.0, 152.0],
        [200.0, 198.0, 202.0],
        [250.0, 248.0, 252.0],
        [350.0, 348.0, 352.0],
        [450.0, 448.0, 452.0],
        [550.0, 548.0, 552.0],
        [650.0, 648.0, 652.0],
        [750.0, 748.0, 752.0],
        [850.0, 848.0, 852.0],
        [950.0, 948.0, 952.0],
        [1050.0, 1048.0, 1052.0]
    ]
}
```

伺服器 ( Server - Respond ) 響應 POST 請求的數據格式爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Respond - body = 
```
{
    "Coefficient" : [
        100.007982422761,
        42148.4577551448,
        1.0001564001486,
        4221377.92224082
    ],
    "Coefficient-StandardDeviation" : [
        0.00781790123184812,
        2104.76673086505,
        0.0000237490808220821,
        210359.023599377
    ],
    "Coefficient-Confidence-Lower-95%" : [
        99.9908250045862,
        37529.2688077105,
        1.0001042796499,
        3759717.22485611
    ],
    "Coefficient-Confidence-Upper-95%" : [
        100.025139840936,
        46767.6467025791,
        1.00020852064729,
        4683038.61962554
    ],
    "Yfit" : [
        100.008980483748,
        199.99155580718,
        299.992070696316,
        399.99603100866,
        500.000567344017,
        600.00431688223,
        700.006476967595,
        800.006517272442,
        900.004060927778,
        999.998826196417,
        1099.99059444852
    ],
    "Yfit-Uncertainty-Lower" : [
        99.0089499294379,
        198.991136273453,
        298.990136898385,
        398.991624763274,
        498.99282487668,
        598.992447662226,
        698.989753032473,
        798.984266632803,
        898.975662941844,
        998.963708008532,
        1098.94822805642
    ],
    "Yfit-Uncertainty-Upper" : [
        101.00901103813,
        200.991951293373,
        300.993902825086,
        401.000210884195,
        501.007916682505,
        601.015588680788,
        701.022365894672,
        801.027666045591,
        901.031064750697,
        1001.0322361364,
        1101.0309201882
    ],
    "Residual" : [
        0.00898048374801874,
        -0.00844419281929731,
        -0.00792930368334055,
        -0.00396899133920669,
        0.000567344017326831,
        0.00431688223034143,
        0.00647696759551763,
        0.00651727244257926,
        0.00406092777848243,
        -0.00117380358278751,
        -0.00940555147826671
    ],
    "testData" : {
        "Ydata" : [
            [150.0, 148.0, 152.0],
            [200.0, 198.0, 202.0],
            [250.0, 248.0, 252.0],
            [350.0, 348.0, 352.0],
            [450.0, 448.0, 452.0],
            [550.0, 548.0, 552.0],
            [650.0, 648.0, 652.0],
            [750.0, 748.0, 752.0],
            [850.0, 848.0, 852.0],
            [950.0, 948.0, 952.0],
            [1050.0, 1048.0, 1052.0]
        ],
        "test-Xvals" : [
            0.500050586546119,
            1.00008444458554,
            1.50008923026377,
            2.50006143908055,
            3.50001668919562,
            4.49997400999207,
            5.49994366811569,
            6.49993211621922,
            7.49994379302719,
            8.49998194168741,
            9.50004903674755
        ],
        "test-Xvals-Uncertainty-Lower" : [
            0.499936310423273,
            0.999794808816128,
            1.49963107921017,
            2.49927920023971,
            3.49892261926065,
            4.49857747071072,
            5.4982524599721,
            6.4979530588239,
            7.49768303155859,
            8.49744512880161,
            9.49724144950174
        ],
        "test-Xvals-Uncertainty-Upper" : [
            0.500160692642957,
            1.00036584601127,
            1.50053513648402,
            2.5008235803856,
            3.50108303720897,
            4.50133543331854,
            5.50159259771137,
            6.50186196458511,
            7.50214864756277,
            8.50245638268284,
            9.50278802032924
        ],
        "Xdata" : [
            0.5,
            1.0,
            1.5,
            2.5,
            3.5,
            4.5,
            5.5,
            6.5,
            7.5,
            8.5,
            9.5
        ],
        "test-Yfit" : [
            149.99283432168886,
            199.98780598165467,
            249.98704946506768,
            349.9910371559672,
            449.9975369446911,
            550.0037557953037,
            650.0081868763082,
            750.0098833059892,
            850.0081939375959,
            950.002643218264,
            1049.9928684998304
        ],
        "test-Yfit-Uncertainty-Lower" : [],
        "test-Yfit-Uncertainty-Upper" : [],
        "test-Residual" : [
            [0.000050586546119],
            [0.00008444458554],
            [0.00008923026377],
            [0.00006143908055],
            [0.00001668919562],
            [-0.00002599000793],
            [-0.0000563318843],
            [-0.00006788378077],
            [-0.0000562069728],
            [-0.00001805831259],
            [0.00004903674755]
        ]
    }
}
```

![]()

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用，轉換 JSON 字符串類型的變量 ( JSON - String Object ) 與微軟電子表格字典類型的變量 ( Windows - Office - Excel - Visual Basic for Applications - Dict Object ) 時，使用的第三方擴展類模組「VBA-JSON」説明 :

[微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用第三方擴展類模組 VBA-JSON 官方 GitHub 網站倉庫](https://github.com/VBA-tools/VBA-JSON): 
https://github.com/VBA-tools/VBA-JSON.git

百度 ( Baidu ) 公司開發的基於 JavaScript 程式設計語言的開源可視化圖表庫「Apache - ECharts」説明 :

[基於 JavaScript 程式設計語言的開源可視化圖表庫「Apache - ECharts」官方網站](https://echarts.apache.org/zh/index.html): 
https://echarts.apache.org/zh/index.html

[基於 JavaScript 程式設計語言的開源可視化圖表庫「Apache - ECharts」官方手冊](https://echarts.apache.org/handbook/zh/get-started/): 
https://echarts.apache.org/handbook/zh/get-started/

[基於 JavaScript 程式設計語言的開源可視化圖表庫「Apache - ECharts」官方 GitHub 網站倉庫頁](https://github.com/apache/echarts): 
https://github.com/apache/echarts.git

計算機程式設計 C 語言「GIMP Toolkit , GTK+」圖形框架説明 :

[計算機程式設計 C 語言「GIMP Toolkit , GTK+」圖形框架官方網站](https://www.gtk.org/): 
https://www.gtk.org/

[計算機程式設計 C 語言「GIMP Toolkit , GTK+」圖形框架官方手冊](https://www.gtk.org/docs/): 
https://www.gtk.org/docs/

谷歌 ( Google - Chromium ) 或火狐 ( Mozilla - Firefox ) 瀏覽器 ( Browser ) 的官方網站 ( Uniform Resource Locator , URL ) 鏈接 :

[火狐 ( Mozilla - Gecko - Firefox ) 瀏覽器官方網站](https://www.mozilla.org/zh-TW/): 
https://www.mozilla.org/zh-TW/

[火狐 ( Mozilla - Gecko - Firefox ) 瀏覽器官方手冊](https://firefox-source-docs.mozilla.org/setup/windows_wsl_build.html): 
https://firefox-source-docs.mozilla.org/setup/windows_wsl_build.html

[火狐 ( Mozilla - Gecko - Firefox ) 瀏覽器官方 GitHub 網站倉庫頁](https://github.com/mozilla/gecko-dev): 
https://github.com/mozilla/gecko-dev.git

[谷歌 ( Google - Chromium ) 瀏覽器官方 GitHub 網站倉庫頁](https://github.com/chromium/chromium): 
https://github.com/chromium/chromium.git

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用 Microsoft Office Excel Professional 2019 的官方網站 ( Uniform Resource Locator , URL ) 鏈接 :

[作業系統 ( Operating system ) 之 Microsoft Windows 官方網站](https://www.microsoft.com/zh-tw/windows): 
https://www.microsoft.com/zh-tw/windows

[電子表格應用 Microsoft Office Excel 官方下載頁](https://www.microsoft.com/zh-tw/download/office): 
https://www.microsoft.com/zh-tw/download/office

[電子表格應用 Microsoft Office Excel 2019 官方説明頁](https://learn.microsoft.com/zh-tw/deployoffice/office2019/overview): 
https://learn.microsoft.com/zh-tw/deployoffice/office2019/overview

---


[深圳市招商證券股份有限公司 ( CHINA MERCHANTS SECURITIES CO., LTD. ) 證券交易服務用戶端 ( zyyht.exe ) 官方下載頁](https://yht.cmschina.com/download.html): 
https://yht.cmschina.com/download.html




開箱即用 ( out of the box ) ( portable application ) 已配置第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 和 Python 解釋器 ( Interpreter ) 運行環境的壓縮檔 ( .7z ) 的 [百度網盤(pan.baidu.com)](https://pan.baidu.com/s/1MZMNeeRz02zpEzSV0xcFBA?pwd=cy8g) 下載頁: 
https://pan.baidu.com/s/1MZMNeeRz02zpEzSV0xcFBA?pwd=cy8g

提取碼：cy8g

開箱即用 ( out of the box ) ( portable application ) 檔 :

1. 壓縮檔 : `Julia-1.9.3-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`Julia-1.9.3-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 二進位可執行檔 ( julia-1.9.3-win64.exe ) 開箱即用 ( out of the box ) ( portable application ) 免安裝版，需自行下載解壓縮，將其保存至檔案夾 ( folder ) : `StatisticalServer/Julia/` 内，最終完整路徑應爲「`StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe`」

2. 壓縮檔 : `Python-3.11.2-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`Python-3.11.2-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 程式設計語言 ( Python ) 解釋器 ( Interpreter ) 二進位可執行檔 ( python-3.11.2-amd64.exe ) 開箱即用 ( out of the box ) ( portable application ) 免安裝版，需自行下載解壓縮，將其保存至檔案夾 ( folder ) : `StatisticalServer/Python/` 内，最終完整路徑應爲「`StatisticalServer/Python/Python311/python.exe`」

3. 壓縮檔 : `StatisticalServerJulia-Julia1.9.3-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`StatisticalServerJulia-Julia1.9.3-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 統計運算伺服器 'StatisticalServerJulia' 開箱即用 ( out of the box ) ( portable application ) 版，已配置計算機程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 運行此統計運算伺服器 'StatisticalServerJulia' 項目所需的第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的運行環境，可自行下載解壓縮，將其保存至檔案夾 ( folder ) : `StatisticalServer/StatisticalServerJulia/` 内，再因應協調配置壓縮檔「`Julia-1.9.3-Window10-AMD_FX8800P_x86_64.7z`」之後，即可使用如下指令啓動運行統計運算伺服器「`StatisticalServerJulia`」項目 : 
```
C:\StatisticalServer> C:/StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe -p 4 --project=C:/StatisticalServer/StatisticalServerJulia/ C:/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configFile=C:/StatisticalServer/StatisticalServerJulia/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```

4. 壓縮檔 : `StatisticalServerPython-Python3.11.2-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`StatisticalServerPython-Python3.11.2-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 統計運算伺服器 'StatisticalServerPython' 開箱即用 ( out of the box ) ( portable application ) 版，已配置計算機程式設計語言 ( computer programming language ) : Python 解釋器 ( Interpreter ) 運行此統計運算伺服器 'StatisticalServerPython' 項目所需的第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的運行環境，可自行下載解壓縮，將其保存至檔案夾 ( folder ) : `StatisticalServer/StatisticalServerPython/` 内，再因應協調配置壓縮檔「`Python-3.11.2-Window10-AMD_FX8800P_x86_64.7z`」之後，即可使用如下指令啓動運行統計運算伺服器「'StatisticalServerPython`」項目 : 
```
C:\StatisticalServer> C:/StatisticalServer/StatisticalServerPython/Scripts/python.exe C:/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=C:/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```
或者 : 
```
C:\StatisticalServer> C:/StatisticalServer/Python/Python311/python.exe C:/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=C:/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```

5. 壓縮檔 : `StatisticalServer-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`StatisticalServer-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 統計運算伺服器 'StatisticalServer' 開箱即用 ( out of the box ) ( portable application ) 版，已配置計算機程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 和 Python 解釋器 ( Interpreter ) 運行此統計運算伺服器 'StatisticalServer' 項目所需的第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的運行環境，可自行下載解壓縮，將其保存至根目錄 ( Root Directory ) : `C:` 内，即可使用如下指令啓動運行統計運算伺服器「'StatisticalServer'」項目 : 

程式設計語言 ( computer programming language ) : Julia 實現，使用如下指令:
```
C:\StatisticalServer> C:/StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe -p 4 --project=C:/StatisticalServer/StatisticalServerJulia/ C:/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configFile=C:/StatisticalServer/StatisticalServerJulia/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```
程式設計語言 ( computer programming language ) : Python 實現，使用如下指令:
```
C:\StatisticalServer> C:/StatisticalServer/StatisticalServerPython/Scripts/python.exe C:/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=C:/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```
或者 : 
```
C:\StatisticalServer> C:/StatisticalServer/Python/Python311/python.exe C:/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=C:/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```
使用批處理脚本「`startServer.bat`」啓動，使用如下指令 : 
```
C:\StatisticalServer> C:/Windows/System32/cmd.exe C:/StatisticalServer/startServer.bat C:/StatisticalServer/config.txt
```
使用二進位可執行檔「`StatisticalServer.exe`」啓動，使用如下指令 : 
```
C:\StatisticalServer> C:/StatisticalServer/StatisticalServer.exe configFile=C:/StatisticalServer/config.txt executableFile=C:/StatisticalServer/Julia/Julia-1.9.3/julia.exe interpreterFile=-p,4,--project=C:/StatisticalServer/StatisticalServerJulia/ scriptFile=C:/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=C:/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

6. 壓縮檔 : `google-pixel-2_android-11_termux-0.118_arm64_ubuntu-22.04_arm64_StatisticalServer.tar.gz`

壓縮檔「`google-pixel-2_android-11_termux-0.118_arm64_ubuntu-22.04_arm64_StatisticalServer.tar.gz`」爲谷歌安卓作業系統 ( Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280 ) 統計運算伺服器「'StatisticalServer'」項目源代碼脚本，可自行下載將其移動至 Android-Termux-Ubuntu 系統的檔案夾 ( folder ) : `/home/` 内，然後再使用如下指令解壓縮 : 
```
root@localhost:~# tar -zxvf /home/google-pixel-2_android-11_termux-0.118_arm64_ubuntu-22.04_arm64_StatisticalServer.tar.gz
```
最終應保存爲檔案夾 ( folder ) : `/home/StatisticalServer/` 形式.

然後，再使用如下指令修改批處理 ( Bash ) 脚本「`startServer.sh`」和二進位可執行檔「`StatisticalServer.exe`」的權限爲所有用戶可運行 :
```
root@localhost:~# chmod 777 /home/StatisticalServer/startServer.sh
```
```
root@localhost:~# chmod 777 /home/StatisticalServer/StatisticalServer.exe
```
使用如下指令修改參數配置文檔「`/home/StatisticalServer/config.txt`」「`/home/StatisticalServer/StatisticalServerJulia/config.txt`」「`/home/StatisticalServer/StatisticalServerPython/config.txt`」和代碼脚本檔 ( Script file ) 「`/home/StatisticalServer/StatisticalServerJulia/Interface.jl`」「`/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl`」「`/home/StatisticalServer/StatisticalServerJulia/Router.jl`」「`/home/StatisticalServer/StatisticalServerJulia/Interpolation_Fitting.jl`」「`/home/StatisticalServer/StatisticalServerPython/Interface.py`」「`/home/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py`」「`/home/StatisticalServer/StatisticalServerPython/Router.py`」「`/home/StatisticalServer/StatisticalServerPython/Interpolation_Fitting.py`」的權限爲所有用戶可讀可寫 :
```
root@localhost:~# chmod 666 /home/StatisticalServer/config.txt
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerJulia/config.txt
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerPython/config.txt
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerJulia/Interface.jl
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerJulia/Router.jl
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerJulia/Interpolation_Fitting.jl
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerPython/Interface.py
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerPython/Router.py
```
```
root@localhost:~# chmod 666 /home/StatisticalServer/StatisticalServerPython/Interpolation_Fitting.py
```
然後，即可使用如下指令啓動運行統計運算伺服器「'StatisticalServer'」項目 : 

程式設計語言 ( computer programming language ) : Julia 實現，使用如下指令:
```
root@localhost:~# /usr/julia/julia-1.10.4/bin/julia -p 4 --project=/home/StatisticalServer/StatisticalServerJulia/ /home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt interface_Function=http_Server webPath=/home/StatisticalServer/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```
程式設計語言 ( computer programming language ) : Python 實現，使用如下指令:
```
root@localhost:~# /usr/bin/python3 /home/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=/home/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=/home/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```
使用 Shell 語言脚本「`startServer.sh`」啓動，使用如下指令 : 
```
root@localhost:~# /bin/bash /home/StatisticalServer/startServer.sh configFile=/home/StatisticalServer/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/ scriptFile=/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=/home/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```
使用二進位可執行檔「`StatisticalServer.exe`」啓動，使用如下指令 : 
```
root@localhost:~# /home/StatisticalServer/StatisticalServer.exe configFile=/home/StatisticalServer/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/StatisticalServer/StatisticalServerJulia/ scriptFile=/home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configInstructions=configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt,interface_Function=http_Server,webPath=/home/StatisticalServer/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

7. 二進位可執行檔 : `StatisticalServer-Window10-AMD_FX8800P_x86_64.exe`

二進位可執行檔「`StatisticalServer-Window10-AMD_FX8800P_x86_64.exe`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 統計運算伺服器「'StatisticalServer'」項目内 C 語言源代碼檔「'StatisticalServer/c/c2exe.c'」使用 Window10 - MinGW-w64 - gcc 編譯器，編譯之後得到的二進位可執行檔，可自行下載保存至檔案夾 ( folder ) : `C:/StatisticalServer/` 内，使用如下指令將其重命名 :
```
C:\StatisticalServer> rename C:/StatisticalServer/StatisticalServer-Window10-AMD_FX8800P_x86_64.exe C:/StatisticalServer/StatisticalServer.exe
```
8. 二進位可執行檔 : `StatisticalServer_google-pixel-2_android-11_termux-0.118_ubuntu-22.04-LTS-rootfs_arm64.exe`

二進位可執行檔「`StatisticalServer_google-pixel-2_android-11_termux-0.118_ubuntu-22.04-LTS-rootfs_arm64.exe`」爲谷歌安卓作業系統 ( Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280 ) 統計運算伺服器「'StatisticalServer'」項目内 C 語言源代碼檔「'StatisticalServer/c/c2exe.c'」使用 Ubuntu 22.04 - gcc 編譯器，編譯之後得到的二進位可執行檔，可自行下載保存至檔案夾 ( folder ) : `/home/StatisticalServer/` 内，使用如下指令將其重命名 :
```
root@localhost:~# /home/StatisticalServer/StatisticalServer_google-pixel-2_android-11_termux-0.118_ubuntu-22.04-LTS-rootfs_arm64.exe /home/StatisticalServer/StatisticalServer.exe
```
再使用如下指令修改其權限爲所有用戶可運行 :
```
root@localhost:~# chmod 777 /home/StatisticalServer/StatisticalServer.exe
```
即可.
