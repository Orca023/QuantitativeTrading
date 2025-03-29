## 低頻數量化交易模型 QuantitativeTrading : QuantitativeTradingJulia , QuantitativeTradingPython
#### Julia , Python
#### 可擴展的數量化交易模型框架 ( scalable quantitative trading model frame ) , 分別使用 Julia 或 Python 程式設計語言 ( computer programming language ) 各自獨立實現 Julia , Pyhton 兩套方案序列遍歷 ( sequence traversal ) 動作 , 借用 Julia 或 Python 的第三方擴展包 ( third-party extensions ( libraries or modules ) ) 實現 Julia , Python 兩套方案優化算法 ( parameters optimization ) 參數最優化.

---

<p word-wrap: break-word; word-break: break-all; overflow-x: hidden; overflow-x: hidden;></p>

一. 其中「`QuantitativeTradingJulia`」項目，使用 Julia 程式設計語言 ( computer programming language )，借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`Optim`」「`JSON`」「`CSV`」「`XLSX`」「`JLD`」「`DataFrames`」實現 .

1. 借用「`Optim`」模組的「`optimize`」函數，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingJulia`」參數 .

2. 借用「`JSON`」模組，實現 Julia 原生數據類型字典 ( Base.Dict ) 對象 ( Object ) 與 JSON 字符串 ( String ) 對象 ( Object ) 之間，數據類型相互轉換 .

3. 借用「`CSV`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作逗號 ( Comma ) 分隔符檔 ( .csv ) 讀 (read) , 寫 ( write ) 功能 .

4. 借用「`XLSX`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 讀 (read) , 寫 ( write ) 功能 .

5. 借用「`JLD`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作 Hierarchical Data Format version 5 , HDF5 格式的數據 ( Julia data format , JLD ) 持久化存儲檔 ( .jld ) 讀 (read) , 寫 ( write ) 功能 .

6. 借用「`DataFrames`」模組，實現程式設計語言 ( computer programming language ) : Julia 處理數據框 ( Julia - DataFrame ) 類型的數據 .

二. 其中「`QuantitativeTradingPython`」項目，使用 Python3 程式設計語言 ( computer programming language )，借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`numpy`」「`scipy`」「`pandas`」實現 .

1. 借用「`numpy`」模組，實現基礎數學向量 ( Vector ) 運算 .

2. 借用「`scipy`」項目的優化模組「`optimize`」的「`minimize`」函數，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingPython`」參數 .

3. 借用「`pandas`」模組，實現程式設計語言 ( computer programming language ) : Python 操作逗號 ( Comma ) 分隔符檔 ( .csv ) 和微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 讀 (read) , 寫 ( write ) 功能 .

4. 借用「`pandas`」模組，實現程式設計語言 ( computer programming language ) : Python 處理數據框 ( Python - DataFrame ) 類型的數據 .

5. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`json`」模組，實現 Python 原生數據類型字典 ( dict ) 對象 ( Object ) 與 JSON 字符串 ( String ) 對象 ( Object ) 之間，數據類型相互轉換 .

6. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`csv`」模組，實現程式設計語言 ( computer programming language ) : Python 操作逗號 ( Comma ) 分隔符檔 ( .csv ) 讀 (read) , 寫 ( write ) 功能 .

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

1. 檔案夾 ( folder )「`QuantitativeTrading/Data/K-Day-source/`」爲日棒缐 ( K - Line ) 原始數據逗號 ( Comma ) 分隔符檔 ( .csv ) 的保存位置，如此例通過深圳市招商證券股份有限公司 ( CHINA MERCHANTS SECURITIES CO., LTD. ) 證券交易服務用戶端 ( zyyht.exe ) 下載得到中華人民共和國人民幣認購和交易的普通股票 ( A shares ) 數據逗號 ( Comma ) 分隔符檔 ( .csv ) 示例 .

2. 程式設計語言 ( computer programming language ) : Julia 數據檔 ( .jld ) 「`QuantitativeTrading/Data/steppingData.jld`」是使用「`Quantitative_Data_Cleaning.jl`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據本地存儲爲程式設計語言 ( computer programming language ) : Julia 數據持久化存儲 Hierarchical Data Format version 5 , HDF5 格式的數據 ( Julia data format , JLD ) 檔 ( .jld ) 示例 .

3. 程式設計語言 ( computer programming language ) : Python 數據檔 ( .pickle ) 「`QuantitativeTrading/Data/steppingData.pickle`」是使用「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據本地存儲爲程式設計語言 ( computer programming language ) : Python 數據持久化存儲序列化 ( pickling ) 二進位字節流 ( bytes ) 檔 ( .pickle ) 示例 .

4. 逗號 ( Comma ) 分隔符檔 ( .csv ) 「`QuantitativeTrading/Data/SZ#002611.csv`」是使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據持久化存儲爲本地逗號 ( Comma ) 分隔符檔 ( .csv ) 示例 .

5. 微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 「`QuantitativeTrading/Data/SZ#002611.xlsx`」是使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據持久化存儲爲本地微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 示例 .

可自定義修改代碼脚本 ( Script ) 檔「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組内函數，個性化調整擴展此量化交易模型日棒缐 ( K - Line ) 數據趨勢强度示意指標，並輔以調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.jl`」「`Quantitative_PickStock.jl`」「`Quantitative_SizePosition.jl`」「`Quantitative_BackTesting.jl`」或「`Quantitative_MarketTiming.py`」「`Quantitative_PickStock.py`」「`Quantitative_SizePosition.py`」「`Quantitative_BackTesting.py`」内函數 ( Function ) 因應協調，即可實現個性化擴展此量化交易模型效果 .

此量化交易模型「`QuantitativeTradingJulia`」的優化器 ( optimization ) 借用程式設計語言 ( computer programming language ) : Julia 第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`Optim`」模組的「`optimize`」函數 ( Function ) 實現，未做計算效率優化，可自行變更調整優化器，並自行調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.jl`」「`Quantitative_PickStock.jl`」「`Quantitative_SizePosition.jl`」内函數 ( Function ) 因應協調，可實現優化效率提速 .

此量化交易模型「`QuantitativeTradingPython`」的優化器 ( optimization ) 借用程式設計語言 ( computer programming language ) : Python 第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`scipy`」項目内優化模組「`optimize`」内「`minimize`」函數 ( Function ) 實現，未做計算效率優化，可自行變更調整優化器，並自行調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.py`」「`Quantitative_PickStock.py`」「`Quantitative_SizePosition.py`」内函數 ( Function ) 因應協調，可實現優化效率提速 .

$\color{rgba(255,0,0,1.0)}{注意，現實狀態下，此兩處尚不具備實用性，需自行視具體問題個性化調整，持續精進使之具備實用性 :}$

$\color{rgba(255,0,0,1.0)}{1.}$ $\color{rgba(255,0,0,1.0)}{代碼脚本 ( Script ) 檔「`Quantitative_Indicators.jl`」「`Quantitative_Indicators.py`」從日棒缐 ( K - Line ) 原始數據抽象，計算日棒缐 ( K - Line ) 數據趨勢强度示意指標值，也就是所謂交易策略，尚不具備實用性，需自行個性化調整完備，使之具有實用性 .}$

$\color{rgba(255,0,0,1.0)}{2.}$ $\color{rgba(255,0,0,1.0)}{量化交易模型「`QuantitativeTradingJulia`」「`QuantitativeTradingPython`」參數的優化器 ( optimization ) 選用未做計算效率考量，尚不具備實用性，需酌情調整，可自行更換第三方優化器 ( optimization ) 提升計算效率，使之具有實用性 .}$

---

Python3 Explain : Quantitative_Indicators.py , Quantitative_Data_Cleaning.py , Quantitative_MarketTiming.py , Quantitative_PickStock.py , Quantitative_SizePosition.py , Quantitative_BackTesting.py

計算機程式設計語言 ( Python ) 解釋器 ( Interpreter ) 與作業系統 ( Operating System ) 環境配置釋明 :

Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30

Interpreter: python-3.11.2-amd64.exe

Interpreter: Python-3.12.4-tar.xz

Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280

Interpreter: Python-3.12.4-tar.xz

微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 配置程式設計語言 ( Python ) 解釋器 ( Interpreter ) 隔離運行環境 :

1. 首先，在微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 創建程式設計語言 ( Python ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingPython/`」 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Python/Python311/python.exe -m venv C:/QuantitativeTrading/QuantitativeTradingPython/
```
運行結束後，可以看到在「`C:/QuantitativeTrading/`」路徑下已經多了一個「`QuantitativeTradingPython`」文件夾，就是新創建成功的「`C:/QuantitativeTrading/QuantitativeTradingPython/`」項目的工作空間 .

2. 微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 進入新創建的「`C:/QuantitativeTrading/QuantitativeTradingPython/`」項目工作空間 :
```
C:\QuantitativeTrading> cd C:/QuantitativeTrading/QuantitativeTradingPython/
```

3. 微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 運行啓動指令，激活進入程式設計語言 ( Python ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingPython/`」 :
```
C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/activate.bat
```

4. 最後, 在程式設計語言 ( Python ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingPython/`」下, 安裝配置第三方擴展包 ( packages ) :

安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`numpy`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install numpy
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`scipy`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install scipy
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`pyarrow`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install pyarrow
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`pillow`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install pillow
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`openpyxl`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install openpyxl
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`xlrd`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install xlrd
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`pandas`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install pandas
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`matplotlib`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install matplotlib
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`statsmodels`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install statsmodels
```
安裝配置程式設計語言 ( Python ) 的第三方擴展模組「`scikit-learn`」 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/pip.exe install sklearn
```

5. 從已激活的程式設計語言 ( Python ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingPython/`」退出返回至微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 環境，使用如下指令 :
```
(QuantitativeTradingPython) C:\QuantitativeTrading\QuantitativeTradingPython> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/deactivate.bat
```
即可 .

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

[Python - openpyxl 官方網站](https://www.python-excel.org/): 
https://www.python-excel.org/

[Python - openpyxl 官方手冊](https://openpyxl.readthedocs.io/en/stable/): 
https://openpyxl.readthedocs.io/en/stable/

[Python - openpyxl 官方 PyPi 組織倉庫頁](https://pypi.org/project/openpyxl/): 
https://pypi.org/project/openpyxl/

[Python - openpyxl 發佈頁](https://foss.heptapod.net/openpyxl/openpyxl): 
https://foss.heptapod.net/openpyxl/openpyxl

[Python - xlrd 官方手冊](https://xlrd.readthedocs.io/en/latest/?badge=latest): 
https://xlrd.readthedocs.io/en/latest/?badge=latest

[Python - xlrd 官方 GitHub 網站倉庫頁](https://github.com/python-excel/xlrd): 
https://github.com/python-excel/xlrd.git

[Python - pillow 官方手冊](https://pillow.readthedocs.io/en/stable/?badge=latest): 
https://pillow.readthedocs.io/en/stable/?badge=latest

[Python - pillow 官方 PyPi 組織倉庫頁](https://pypi.org/project/pillow/): 
https://pypi.org/project/pillow/

[Python - pillow 官方 GitHub 網站倉庫頁](https://github.com/python-pillow/Pillow): 
https://github.com/python-pillow/Pillow.git

[Python - pyarrow 官方手冊](https://arrow.apache.org/docs/3.0/_modules/pyarrow.html): 
https://arrow.apache.org/docs/3.0/_modules/pyarrow.html

[Python - pyarrow 官方 PyPi 組織倉庫頁](https://pypi.org/project/pyarrow/): 
https://pypi.org/project/pyarrow/

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
    PickStock_ticker_symbol,  # [[str()]],  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
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
    PickStock_ticker_symbol = PickStock_ticker_symbol,  # [[str()]],  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
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
        "600118": stepping_data["600118"],
        "600119": stepping_data["600119"],
        "600120": stepping_data["600120"],
        "002607": stepping_data["002607"],
        "002608": stepping_data["002608"],
        "002609": stepping_data["002609"],
        "002611": stepping_data["002611"]
    },  # 回測數據集，標準化日棒缐（K Line Daily）數據字典 ( Python - dict ) ;
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

微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 配置程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 隔離運行環境 :

1. 首先，微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 啓動程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 進入語言 ( Julia ) 的運行環境 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.9.3/bin/julia.exe
```

2. 然後，創建程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingJulia/`」 :

從程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行進入程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行的擴展包安裝環境 :
```
julia> ]
```
在程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行的擴展包安裝環境在當前目錄創建隔離運行環境「`QuantitativeTradingJulia`」項目 :
```
(@v1.9) pkg> generate ./QuantitativeTradingJulia
```
運行結束後，可以看到在「`C:/QuantitativeTrading/`」路徑下已經多了一個「`QuantitativeTradingJulia`」文件夾，就是新創建成功的「`C:/QuantitativeTrading/QuantitativeTradingJulia/`」項目的工作空間 .
鍵盤按下退格鍵「`Backspce`」退出程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行的擴展包安裝環境，返回到程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行環境 .
退出程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行環境返回至微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 環境，使用如下指令 :
```
julia> exit()
```
微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 進入新創建的「`C:/QuantitativeTrading/QuantitativeTradingJulia/`」項目工作空間 :
```
C:\QuantitativeTrading> cd C:/QuantitativeTrading/QuantitativeTradingJulia/
```

3. 微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 運行啓動指令，進入程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingJulia/`」 :
```
C:\QuantitativeTrading\QuantitativeTradingJulia> C:/QuantitativeTrading/Julia/Julia-1.9.3/bin/julia.exe --project=C:/QuantitativeTrading/QuantitativeTradingJulia/
```

4. 最後, 在程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 隔離運行環境「`C:/QuantitativeTrading/QuantitativeTradingJulia/`」下, 安裝配置第三方擴展包 ( packages ) :

從程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行進入程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行的擴展包安裝環境 :
```
julia> ]
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`JSON`」 :
```
(QuantitativeTradingJulia) pkg> add JSON
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`Optim`」 :
```
(QuantitativeTradingJulia) pkg> add Optim
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`JLD`」 :
```
(QuantitativeTradingJulia) pkg> add JLD
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`DataFrames`」 :
```
(QuantitativeTradingJulia) pkg> add DataFrames
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`CSV`」 :
```
(QuantitativeTradingJulia) pkg> add CSV
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`XLSX`」 :
```
(QuantitativeTradingJulia) pkg> add XLSX
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`HTTP`」 :
```
(QuantitativeTradingJulia) pkg> add HTTP
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`Gadfly`」 :
```
(QuantitativeTradingJulia) pkg> add Gadfly
```
安裝配置程式設計語言 ( Julia ) 的第三方擴展模組「`Plots`」 :
```
(QuantitativeTradingJulia) pkg> add Plots
```
鍵盤按下退格鍵「`Backspce`」退出程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行的擴展包安裝環境，返回到程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行環境 .
退出程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 控制臺命令行環境返回至微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 環境，使用如下指令 :
```
julia> exit()
```
即可 .

![]()

Interpreter :

julia - 1.10.4

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

[Julia - JSON 官方 GitHub 網站倉庫頁](https://github.com/JuliaIO/JSON.jl): 
https://github.com/JuliaIO/JSON.jl.git

[Julia - Optim 官方手冊](https://julianlsolvers.github.io/Optim.jl/stable/): 
https://julianlsolvers.github.io/Optim.jl/stable/

[Julia - Optim 官方 GitHub 網站倉庫頁](https://github.com/JuliaNLSolvers/Optim.jl.git): 
https://github.com/JuliaNLSolvers/Optim.jl

[Julia - JLD 官方 GitHub 網站倉庫頁](https://github.com/JuliaIO/JLD.jl): 
https://github.com/JuliaIO/JLD.jl.git

[Julia - DataFrames 官方 GitHub 網站倉庫頁](https://github.com/JuliaData/DataFrames.jl): 
https://github.com/JuliaData/DataFrames.jl.git

[Julia - CSV 官方 GitHub 網站倉庫頁](https://github.com/JuliaData/CSV.jl): 
https://github.com/JuliaData/CSV.jl.git

[Julia - XLSX 官方手冊](https://felipenoris.github.io/XLSX.jl/stable/): 
https://felipenoris.github.io/XLSX.jl/stable/

[Julia - XLSX 官方 GitHub 網站倉庫頁](https://github.com/felipenoris/XLSX.jl): 
https://github.com/felipenoris/XLSX.jl.git

[Julia - HTTP 官方 GitHub 網站倉庫頁](https://github.com/JuliaWeb/HTTP.jl): 
https://github.com/JuliaWeb/HTTP.jl.git

[Julia - JuMP 官方網站](https://jump.dev/): 
https://jump.dev/

[Julia - JuMP 官方手冊](https://jump.dev/JuMP.jl/stable/): 
https://jump.dev/JuMP.jl/stable/

[Julia - JuMP 官方 GitHub 網站倉庫頁](https://github.com/jump-dev/JuMP.jl): 
https://github.com/jump-dev/JuMP.jl.git

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

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaIO」項目官方 GitHub 網站賬戶](https://github.com/JuliaIO): 
https://github.com/JuliaIO

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaWeb」項目官方 GitHub 網站賬戶](https://github.com/JuliaWeb): 
https://github.com/JuliaWeb

[程式設計 Julia 語言第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「JuliaData」項目官方 GitHub 網站賬戶](https://github.com/JuliaData): 
https://github.com/JuliaData

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
return_SizePosition_fit_model = SizePosition_fit_model(
    Base.Dict{Core.String, Core.Any}(
        "600118" => training_data["600118"],
        "600119" => training_data["600119"],
        "600120" => training_data["600120"],
        "002607" => training_data["002607"],
        "002608" => training_data["002608"],
        "002609" => training_data["002609"],
        "002611" => training_data["002611"]
    ),  Base.Dict{Core.String, Core.Any}(),  # 標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    weight_MarketTiming_Dict,  # Base.Dict{Core.String, Core.Any}(),  # 股票擇時交易倉位占比;
    weight_PickStock_Dict,  # Base.Dict{Core.String, Core.Any}(),  # 選股組合占比;
    MarketTiming_Parameter,  # Base.Dict{Core.String, Core.Any}(),  # 按照擇時規則優化之後的參數字典;
    PickStock_Parameter,  # Base.Dict{Core.String, Core.Any}(),  # 按照選股規則優化之後的參數字典;
    PickStock_ticker_symbol,  # ::Core.Array{Core.Array{Core.String, 1}, 1} = Core.Array{Core.Array{Core.String, 1}, 1}(),  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
    PickStock,  # (arguments) -> begin return arguments; end,
    PickStock_fit_model,  # (arguments) -> begin return arguments; end,
    MarketTiming,  # (arguments) -> begin return arguments; end,
    MarketTiming_fit_model,  # (arguments) -> begin return arguments; end,
    Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("y_profit = ", return_SizePosition_fit_model["y_profit"]);  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
println("y_Long_Position_profit = ", return_SizePosition_fit_model["y_Long_Position_profit"]);  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
println("y_Short_Selling_profit = ", return_SizePosition_fit_model["y_Short_Selling_profit"]);  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
println("y_loss = ", return_SizePosition_fit_model["y_loss"]);  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
println("y_Long_Position_loss = ", return_SizePosition_fit_model["y_Long_Position_loss"]);  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
println("y_Short_Selling_loss = ", return_SizePosition_fit_model["y_Short_Selling_loss"]);  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
println("maximum_drawdown = ", return_SizePosition_fit_model["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum_drawdown_Long_Position = ", return_SizePosition_fit_model["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("maximum_drawdown_Short_Selling = ", return_SizePosition_fit_model["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
println("profit_total = ", return_SizePosition_fit_model["profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
println("Long_Position_profit_total = ", return_SizePosition_fit_model["Long_Position_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
println("Short_Selling_profit_total = ", return_SizePosition_fit_model["Short_Selling_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
println("profit_Positive = ", return_SizePosition_fit_model["profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("profit_Negative = ", return_SizePosition_fit_model["profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("Long_Position_profit_Positive = ", return_SizePosition_fit_model["Long_Position_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("Long_Position_profit_Negative = ", return_SizePosition_fit_model["Long_Position_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("Short_Selling_profit_Positive = ", return_SizePosition_fit_model["Short_Selling_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
println("Short_Selling_profit_Negative = ", return_SizePosition_fit_model["Short_Selling_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
println("profit_Positive_probability = ", return_SizePosition_fit_model["profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("profit_Negative_probability = ", return_SizePosition_fit_model["profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("Long_Position_profit_Positive_probability = ", return_SizePosition_fit_model["Long_Position_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("Long_Position_profit_Negative_probability = ", return_SizePosition_fit_model["Long_Position_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("Short_Selling_profit_Positive_probability = ", return_SizePosition_fit_model["Short_Selling_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
println("Short_Selling_profit_Negative_probability = ", return_SizePosition_fit_model["Short_Selling_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
println("average_price_amplitude_date_transaction = ", return_SizePosition_fit_model["average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("Long_Position_average_price_amplitude_date_transaction = ", return_SizePosition_fit_model["Long_Position_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("Short_Selling_average_price_amplitude_date_transaction = ", return_SizePosition_fit_model["Short_Selling_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
println("average_volume_turnover_date_transaction = ", return_SizePosition_fit_model["average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("Long_Position_average_volume_turnover_date_transaction = ", return_SizePosition_fit_model["Long_Position_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("Short_Selling_average_volume_turnover_date_transaction = ", return_SizePosition_fit_model["Short_Selling_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
println("average_date_transaction_between = ", return_SizePosition_fit_model["average_date_transaction_between"]);  # 兩次交易間隔日長，均值;
println("Long_Position_average_date_transaction_between = ", return_SizePosition_fit_model["Long_Position_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
println("Short_Selling_average_date_transaction_between = ", return_SizePosition_fit_model["Short_Selling_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
println("number_SizePosition_transaction = ", return_SizePosition_fit_model["number_PickStock_transaction"]);  # 交易過股票的總隻數;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]);
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"]);  # 按規則執行交易的日期，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][1]);  # 交易規則自動選取的交易日期;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][3]);  # 交易規則自動選取的成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][4]);  # 交易規則自動選取的成交量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][8]);  # 當日總成交量（turnover volume）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][9]);  # 當日開盤（opening）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][10]);  # 當日收盤（closing）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][11]);  # 當日最低（low）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][12]);  # 當日最高（high）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][15]);  # 當日每股收益（price earnings）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"][16]);  # 當日每股净值（book value per share）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"]);  # 按規則執行交易的日期，向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][1]);  # 交易規則自動選取的交易日期;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][3]);  # 交易規則自動選取的成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][4]);  # 交易規則自動選取的成交量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][8]);  # 當日總成交量（turnover volume）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][9]);  # 當日開盤（opening）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][10]);  # 當日收盤（closing）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][11]);  # 當日最低（low）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][12]);  # 當日最高（high）成交價;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][15]);  # 當日每股收益（price earnings）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"][16]);  # 當日每股净值（book value per share）;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["revenue_and_expenditure_records_date_transaction"]);  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
println(return_SizePosition_fit_model["SizePosition_transaction_sequence"]["002611"]["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
```
```
result = SizePosition(
    training_data = Base.Dict{Core.String, Core.Any}(
        "600118" => training_data["600118"],
        "600119" => training_data["600119"],
        "600120" => training_data["600120"],
        "002607" => training_data["002607"],
        "002608" => training_data["002608"],
        "002609" => training_data["002609"],
        "002611" => training_data["002611"]
    ),  Base.Dict{Core.String, Core.Any}(),  # 訓練集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    testing_data = Base.Dict{Core.String, Core.Any}(
        "600118" => testing_data["600118"],
        "600119" => testing_data["600119"],
        "600120" => testing_data["600120"],
        "002607" => testing_data["002607"],
        "002608" => testing_data["002608"],
        "002609" => testing_data["002609"],
        "002611" => testing_data["002611"]
    ),  Base.Dict{Core.String, Core.Any}(),  # 測試集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    Pdata_0 = [weight_MarketTiming_Dict, weight_PickStock_Dict],  # training_data["002611"]["Pdata_0"],  # 優化迭代參數初值;
    weight = Core.Array{Core.Float64, 1}(),  # training_data["002611"]["weight"],  # 優化迭代數據權重值;
    Plower = [Plower_weight_MarketTiming_Dict, Plower_weight_PickStock_Dict],  # 優化迭代參數值約束下限;
    Pupper = [Pupper_weight_MarketTiming_Dict, Pupper_weight_PickStock_Dict],  # 優化迭代參數值約束上限;
    MarketTiming_Parameter = MarketTiming_Parameter,  # Base.Dict{Core.String, Core.Any}(),  # 按照擇時規則優化之後的參數字典;
    PickStock_Parameter = PickStock_Parameter,  # Base.Dict{Core.String, Core.Any}(),  # 按照選股規則優化之後的參數字典;
    PickStock_ticker_symbol = PickStock_ticker_symbol,  # ::Core.Array{Core.Array{Core.String, 1}, 1} = Core.Array{Core.Array{Core.String, 1}, 1}(),  # 依照選股規則排序篩選出的股票代碼字符串存儲數組;
    SizePosition_fit_model = SizePosition_fit_model,  # (arguments) -> begin return arguments; end,
    PickStock = PickStock,  # (arguments) -> begin return arguments; end,
    PickStock_fit_model = PickStock_fit_model,  # (arguments) -> begin return arguments; end,
    MarketTiming = MarketTiming,  # (arguments) -> begin return arguments; end,
    MarketTiming_fit_model = MarketTiming_fit_model,  # (arguments) -> begin return arguments; end,
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("Coefficient 1 weight_MarketTiming : ", "\n", result["Coefficient"][1]);  # 優化得到的參數;
println("Coefficient 2 weight_PickStock : ", "\n", result["Coefficient"][2]);  # 優化得到的參數;
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
println(result["testData"]["SizePosition_transaction_sequence"]["002611"]["P1_Array"]);
println(result["testData"]["SizePosition_transaction_sequence"]["002611"]["Long_Position_date_transaction"]);
println(result["testData"]["SizePosition_transaction_sequence"]["002611"]["Short_Selling_date_transaction"]);
println(result["testData"]["SizePosition_transaction_sequence"]["002611"]);
```

7. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.jl`」内函數 ( Function ) 運行示例 :
```
return_stepping_Dict = BackTesting_Stepper(
    steppingData = Base.Dict{Core.String, Core.Any}(
        "600118" => stepping_data["600118"],
        "600119" => stepping_data["600119"],
        "600120" => stepping_data["600120"],
        "002607" => stepping_data["002607"],
        "002608" => stepping_data["002608"],
        "002609" => stepping_data["002609"],
        "002611" => stepping_data["002611"]
    ),  Base.Dict{Core.String, Core.Any}(),  # 回測數據集，標準化日棒缐（K Line Daily）數據字典 ( Julia - Base.Dict ) ;
    risk_threshold = Core.Float64(0.8),  # risk_threshold_drawdown_loss,  # 自定義的風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    training_sequence_length = Core.Int64(60),  # 推進分析（Stepper movement）（propulsion analysis）每一次步進，訓練集數據自定義的交易日截取長度;
    training_ticker_symbol = [Base.string(item) for item in Base.keys(stepping_data)],  # training_data_ticker_symbol_Array,  # 訓練集納入股票代碼字符串的一維數組，函數 Base.keys(Dict) 表示獲取字典的所有 key 值，返回值爲字符串向量（Base.Vector）;
    testing_ticker_symbol = [Base.string(item) for item in Base.keys(stepping_data)],  # testing_data_ticker_symbol_Array,  # 訓練集納入股票代碼字符串的一維數組，函數 Base.keys(Dict) 表示獲取字典的所有 key 值，返回值爲字符串向量（Base.Vector）;
    testing_sequence_length = Core.Int64(1),  # 推進分析（Stepper movement）（propulsion analysis）每一次步進，測試集數據自定義的交易日截取長度;
    SizePosition = SizePosition,  # (arguments) -> begin return arguments; end,
    SizePosition_fit_model = SizePosition_fit_model,  # (arguments) -> begin return arguments; end,
    SizePosition_Pdata_0 = Core.Array{Core.Any, 1}(),  # SizePosition_Parameter_Array,  # 倉位優化迭代參數初值;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64())), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    SizePosition_weight = Core.Array{Core.Any, 1}(),  # [Core.Float64(1.0) for i in 1:Base.length(stepping_data)],  # 倉位優化迭代數據權重值;
    SizePosition_Plower = [Plower_weight_MarketTiming_Dict, Plower_weight_PickStock_Dict],  # [-Base.Inf, -Base.Inf],  # 倉位優化迭代參數值約束下限;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(0.0), "Short_Selling" => ::Core.Float64 = Core.Float64(0.0))), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    SizePosition_Pupper = [Pupper_weight_MarketTiming_Dict, Pupper_weight_PickStock_Dict],  # [+Base.Inf, +Base.Inf],  # 倉位優化迭代參數值約束上限;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(1.0), "Short_Selling" => ::Core.Float64 = Core.Float64(1.0))), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    PickStock = PickStock,  # (arguments) -> begin return arguments; end,
    PickStock_fit_model = PickStock_fit_model,  # (arguments) -> begin return arguments; end,
    PickStock_Pdata_0 = Core.Array{Core.Float64, 1}(),  # [5, 3],  # PickStock_Parameter,  # 選股優化迭代參數初值;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64())), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    PickStock_weight = Core.Array{Core.Float64, 1}(),  # [Core.Float64(1.0) for i in 1:Base.length(stepping_data)],  # 選股優化迭代數據權重值;
    PickStock_Plower = [Core.Int64(1), Core.Int64(1)],  # [-Base.Inf, -Base.Inf],  # 選股優化迭代參數值約束下限;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(0.0), "Short_Selling" => ::Core.Float64 = Core.Float64(0.0))), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    PickStock_Pupper = [Core.Int64([if (Core.Int64(maximum_stepping_data) > Core.Int64(0)) Core.Int64(maximum_stepping_data) else Core.Int64(1) end for i in Core.Int64(1):Core.Int64(1)][Core.Int64(1)]), Core.Int64([if (Core.Int64(maximum_ticker_symbol_stepping_data) > Core.Int64(0)) Core.Int64(maximum_ticker_symbol_stepping_data) else Core.Int64(1) end for i in Core.Int64(1):Core.Int64(1)][Core.Int64(1)])],  # [+Base.Inf, +Base.Inf],  # 選股優化迭代參數值約束上限;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(1.0), "Short_Selling" => ::Core.Float64 = Core.Float64(1.0))), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    MarketTiming = MarketTiming,  # (arguments) -> begin return arguments; end,
    MarketTiming_fit_model = MarketTiming_fit_model,  # (arguments) -> begin return arguments; end,
    MarketTiming_Pdata_0 = Core.Array{Core.Float64, 1}(),  # [5, 0.1, -0.1, 0.0],  # MarketTiming_Parameter,  # 擇時優化迭代參數初值;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64())), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    MarketTiming_weight = Core.Array{Core.Float64, 1}(),  # [Core.Float64(1.0) for i in 1:Base.length(stepping_data)],  # 擇時優化迭代數據權重值;
    MarketTiming_Plower = [Core.Int64(1), -Base.Inf, -Base.Inf, -Base.Inf],  # [-Base.Inf, -Base.Inf, -Base.Inf, -Base.Inf],  # 擇時優化迭代參數值約束下限;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(0.0), "Short_Selling" => ::Core.Float64 = Core.Float64(0.0))), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    MarketTiming_Pupper = [Core.Int64([if (Core.Int64(maximum_stepping_data) > Core.Int64(0)) Core.Int64(maximum_stepping_data) else Core.Int64(1) end for i in Core.Int64(1):Core.Int64(1)][Core.Int64(1)]), +Base.Inf, +Base.Inf, +Base.Inf],  # [+Base.Inf, +Base.Inf, +Base.Inf, +Base.Inf],  # 擇時優化迭代參數值約束上限;  # ::Core.Array{Core.Any, 1}[::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(1.0), "Short_Selling" => ::Core.Float64 = Core.Float64(1.0))), ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("Long_Position" => ::Core.Float64 = Core.Float64(), "Short_Selling" => ::Core.Float64 = Core.Float64()))],
    Quantitative_Indicators_Function = Intuitive_Momentum_KLine,  # (arguments) -> begin return arguments; end,
    investment_method = investment_method  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;  # 選擇是否允許「賣空」交易;
);
println("number PickStock : ", return_stepping_Dict["number_PickStock"]);
println("number PickStock Long Position : ", return_stepping_Dict["number_PickStock_Long_Position"]);
println("number PickStock Short Selling : ", return_stepping_Dict["number_PickStock_Short_Selling"]);
println("number transaction : ", return_stepping_Dict["number_transaction_total"]);
println("number transaction Long Position : ", return_stepping_Dict["number_transaction_total_Long_Position"]);
println("number transaction Short Selling : ", return_stepping_Dict["number_transaction_total_Short_Selling"]);
println("maximum drawdown : ", return_stepping_Dict["maximum_drawdown"]);
println("maximum drawdown Long Position : ", return_stepping_Dict["maximum_drawdown_Long_Position"]);
println("maximum drawdown Short Selling : ", return_stepping_Dict["maximum_drawdown_Short_Selling"]);
println("profit total : ", return_stepping_Dict["profit_total"]);
println("Long Position profit total : ", return_stepping_Dict["Long_Position_profit_total"]);
println("Short Selling profit total : ", return_stepping_Dict["Short_Selling_profit_total"]);
println("profit Positive : ", return_stepping_Dict["profit_Positive"]);
println("profit Negative : ", return_stepping_Dict["profit_Negative"]);
println("Long Position profit Positive : ", return_stepping_Dict["Long_Position_profit_Positive"]);
println("Long Position profit Negative : ", return_stepping_Dict["Long_Position_profit_Negative"]);
println("Short Selling profit Positive : ", return_stepping_Dict["Short_Selling_profit_Positive"]);
println("Short Selling profit Negative : ", return_stepping_Dict["Short_Selling_profit_Negative"]);
println("profit Positive probability : ", return_stepping_Dict["profit_Positive_probability"]);
println("profit Negative probability : ", return_stepping_Dict["profit_Negative_probability"]);
println("Long Position profit Positive probability : ", return_stepping_Dict["Long_Position_profit_Positive_probability"]);
println("Long Position profit Negative probability : ", return_stepping_Dict["Long_Position_profit_Negative_probability"]);
println("Short Selling profit Positive probability : ", return_stepping_Dict["Short_Selling_profit_Positive_probability"]);
println("Short Selling profit Negative probability : ", return_stepping_Dict["Short_Selling_profit_Negative_probability"]);
println("average price amplitude date transaction : ", return_stepping_Dict["average_price_amplitude_date_transaction"]);
println("Long Position average price amplitude date transaction : ", return_stepping_Dict["Long_Position_average_price_amplitude_date_transaction"]);
println("Short Selling average price amplitude date transaction : ", return_stepping_Dict["Short_Selling_average_price_amplitude_date_transaction"]);
println("average volume turnover date transaction : ", return_stepping_Dict["average_volume_turnover_date_transaction"]);
println("Long Position average volume turnover date transaction : ", return_stepping_Dict["Long_Position_average_volume_turnover_date_transaction"]);
println("Short Selling average volume turnover date transaction : ", return_stepping_Dict["Short_Selling_average_volume_turnover_date_transaction"]);
println("average date transaction between : ", return_stepping_Dict["average_date_transaction_between"]);
println("Long Position average date transaction between : ", return_stepping_Dict["Long_Position_average_date_transaction_between"]);
println("Short Selling average date transaction between : ", return_stepping_Dict["Short_Selling_average_date_transaction_between"]);
println("PickStock Long Position Array :", "\n", return_stepping_Dict["PickStock_Long_Position"]);
println("PickStock Short Selling Array :", "\n", return_stepping_Dict["PickStock_Short_Selling"]);
println("PickStock Array :", "\n", return_stepping_Dict["PickStock"]);
println("profit paired transaction Dict :", "\n", return_stepping_Dict["profit_paired_transaction"]);
println("transaction sequence Dict :", "\n", return_stepping_Dict["transaction_sequence"]);
println("stepping sequence Array :", "\n", return_stepping_Dict["stepping_sequence"]);
```

---

[深圳市招商證券股份有限公司 ( CHINA MERCHANTS SECURITIES CO., LTD. ) 證券交易服務用戶端 ( zyyht.exe ) 官方下載頁](https://yht.cmschina.com/download.html): 
https://yht.cmschina.com/download.html

開箱即用 ( out of the box ) ( portable application ) 已配置第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 和 Python 解釋器 ( Interpreter ) 運行環境的壓縮檔 ( .7z ) 的 [百度網盤(pan.baidu.com)](https://pan.baidu.com/s/16jdb-nX45cR5uZZKMItsjQ?pwd=kgbh) 下載頁: 
https://pan.baidu.com/s/16jdb-nX45cR5uZZKMItsjQ?pwd=kgbh

提取碼：kgbh

開箱即用 ( out of the box ) ( portable application ) 檔 :
