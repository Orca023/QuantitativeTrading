## 低頻數量化交易模型 QuantitativeTrading : QuantitativeTradingJulia , QuantitativeTradingPython
#### Julia , Python
#### 可擴展的數量化交易模型框架 ( scalable quantitative trading model frame ) , 分別使用 Julia 或 Python 程式設計語言 ( computer programming language ) 各自獨立實現 Julia , Pyhton 兩套方案序列遍歷 ( sequence traversal ) 動作 , 借用 Julia 或 Python 的第三方擴展包 ( third-party extensions ( libraries or modules ) ) 實現 Julia , Python 兩套方案優化算法 ( parameters optimization ) 參數最優化.

---

<p word-wrap: break-word; word-break: break-all; overflow-x: hidden; overflow-x: hidden;></p>

一. 其中「`QuantitativeTradingJulia`」項目，使用 Julia 程式設計語言 ( computer programming language )，借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`Optim`」「`JSON`」「`CSV`」「`XLSX`」「`JLD`」「`DataFrames`」實現 .

1. 借用「`HTTP`」模組，實現 http 協議 web 伺服器 ( Server ) 功能.

2. 借用「`Optim`」模組的「`optimize`」函數，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingJulia`」參數 .

3. 借用「`JSON`」模組，實現 Julia 原生數據類型字典 ( Base.Dict ) 對象 ( Object ) 與 JSON 字符串 ( String ) 對象 ( Object ) 之間，數據類型相互轉換 .

4. 借用「`CSV`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作逗號 ( Comma ) 分隔符檔 ( .csv ) 讀 (read) , 寫 ( write ) 功能 .

5. 借用「`XLSX`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 讀 (read) , 寫 ( write ) 功能 .

6. 借用「`JLD`」模組，實現程式設計語言 ( computer programming language ) : Julia 操作 Hierarchical Data Format version 5 , HDF5 格式的數據 ( Julia data format , JLD ) 持久化存儲檔 ( .jld ) 讀 (read) , 寫 ( write ) 功能 .

7. 借用「`DataFrames`」模組，實現程式設計語言 ( computer programming language ) : Julia 處理數據框 ( Julia - DataFrame ) 類型的數據 .

8. 也可以自定義修改代碼，借用第三方「`LsqFit`」模組，實現自定義任意形式初等函數 ( Elementary Function ) 方程擬合 ( Fit ) 運算.

9. 也可以自定義修改代碼，借用第三方「`Interpolations`」和「`DataInterpolations`」模組，實現插值 ( Interpolation ) 運算.

10. 也可以自定義修改代碼，借用第三方「`Roots`」模組，實現任意形式自定義初等函數一元方程求根 ( Solving Equation )，即求解反函數 ( Inverse ) .

11. 也可以自定義修改代碼，借用第三方「`JuMP`」模組選擇調用第三方「`Gurobi`」,「`Ipopt`」,「`Cbc`」,「`GLPK`」等算法模組，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingJulia`」參數 .

二. 其中「`QuantitativeTradingPython`」項目，使用 Python3 程式設計語言 ( computer programming language )，借用第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`numpy`」「`scipy`」「`pandas`」實現 .

1. 借用「`numpy`」模組，實現基礎數學向量 ( Vector ) 運算 .

2. 借用「`scipy`」項目的優化模組「`optimize`」的「`minimize`」函數，實現優化算法 ( parameters optimization ) 即通用形式優化問題求解 ( optimization ) 功能，最優化此數量化交易模型「`QuantitativeTradingPython`」參數 .

3. 借用「`pandas`」模組，實現程式設計語言 ( computer programming language ) : Python 操作逗號 ( Comma ) 分隔符檔 ( .csv ) 和微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 讀 (read) , 寫 ( write ) 功能 .

4. 借用「`pandas`」模組，實現程式設計語言 ( computer programming language ) : Python 處理數據框 ( Python - DataFrame ) 類型的數據 .

5. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`json`」模組，實現 Python 原生數據類型字典 ( dict ) 對象 ( Object ) 與 JSON 字符串 ( String ) 對象 ( Object ) 之間，數據類型相互轉換 .

6. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`csv`」模組，實現程式設計語言 ( computer programming language ) : Python 操作逗號 ( Comma ) 分隔符檔 ( .csv ) 讀 (read) , 寫 ( write ) 功能 .

7. 使用實現程式設計語言 ( computer programming language ) : Python 的原生「`pickle`」模組，實現數據持久化存儲序列化 ( pickling ) 二進位字節流 ( bytes ) 檔 ( .pickle ) 讀 (read) , 寫 ( write ) 功能 .

8. 也可以自定義修改代碼，借用第三方「`scipy`」項目的優化模組「`optimize`」的「`curve_fit`」函數，實現自定義任意形式初等函數 ( Elementary Function ) 方程擬合 ( Fit ) 運算.

9. 也可以自定義修改代碼，借用第三方「`scipy`」項目的插值模組「`interpolate`」的「`make_interp_spline`」「`BSpline`」「`interp1d`」「`UnivariateSpline`」「`lagrange`」函數，實現插值 ( Interpolation ) 運算.

10. 也可以自定義修改代碼，借用第三方「`scipy`」項目的優化模組「`optimize`」的「`root`」函數，實現任意形式自定義初等函數一元方程求根 ( Solving Equation )，即求解反函數 ( Inverse ) .

---

一. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Interface.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Interface.py`

代碼脚本 ( Script ) 檔 : `Interface.jl` 或 `Interface.py` 是伺服器 ( Server ) 函數 ( Function ) , 具體功能是實現: 讀入 ( read ) 數據, 寫出 ( write ) 結果.

二. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Router.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Router.py`

代碼脚本 ( Script ) 檔 : `Router.jl` 或 `Router.py` 引用 ( Import ) 檔 `Interpolation_Fitting.jl` 或 `Interpolation_Fitting.py` 裏的執行自定義運算規則的函數 ( Function )，並將計算結果返回 ( return ) 至檔 `Interface` 的伺服器 ( Server ) 函數. 

其中, 檔 `Router.jl` 或 `Router.py` 裏的 : `do_data` 函數 ( Function ) 是執行文檔 ( file ) 監聽伺服器 ( `file_Monitor` ) 讀入的數據分發路由 ( Router ) 功能.

其中, 檔 `Router.jl` 或 `Router.py` 裏的 : `do_Request` 函數 ( Function ) 是執行網路 ( web ) 伺服器 ( `http_Server` ) 讀入的從用戶端 ( `http_Client` ) 發送的請求 ( Request ) 數據的分發路由 ( Router ) 功能.

其中, 檔 `Router.jl` 或 `Router.py` 裏的 : `do_Response` 函數 ( Function ) 是執行網路 ( web ) 用戶端鏈接器 ( `http_Client` ) 接收到從伺服器 ( `http_Server` ) 回饋的響應 ( Response ) 數據 ( 運算處理結果 ) 的分發路由 ( Router ) 功能.

可自行修改行使路由 (Router) 功能的代碼脚本 ( script file ) 檔「`Router.jl`」「`Router.py`」内的 Julia 或 Python 代碼，同時需自行修改行使具體算法 ( Algorithm ) 功能的代碼脚本 ( script file ) 檔内的 Julia 或 Python 代碼，如此例的「`Interpolation_Fitting.jl`」「`Interpolation_Fitting.py`」檔，使二者相互因應協調，即可自定義擴展此數量化交易運算伺服器「`QuantitativeTrading`」所能提供的計算方法 ( Server Respond ) 的選項.

三. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py`

代碼脚本 ( Script ) 檔 : `QuantitativeTradingServer.jl` 或 `QuantitativeTradingServer.py` 是伺服器（Server）啓動入口，引用 ( Import ) 檔 `Interface.jl` 或 `Interface.py` 裏的伺服器 ( Server ) 讀入 ( read ) 待處理的原始數據, 然後, 實現數據分發路由 ( Router ) 功能, 可通過修改代碼脚本 ( Script ) 檔 : `Router.jl` 或 `Router.py` 裏的 : `do_data` 和 `do_Request` 兩個函數 ( Function ) , 實現自定義規則的數據分發運算處理並返回 ( return ) 運算結果, 然後再將運算結果, 通過引用 ( Import ) 檔 `Interface.jl` 或 `Interface.py` 裏的伺服器 ( Server ) 回饋寫出 ( write ) 結果返回 ( return ) 至用戶端 ( Client ) .

四. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Interpolation_Fitting.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Interpolation_Fitting.py`

代碼脚本 ( Script ) 檔 : `Interpolation_Fitting.jl` 和 `Interpolation_Fitting.py` 裏，可創建執行自定義運算規則的函數 ( Function )，用以執行讀入 ( read ) 數據具體的運算處理 ( calculator ) 功能, 即本例擬合（Fit）運算、插值（Interpolation）運算等，並返回 ( return ) 處理結果至檔 Router 的路由函數.

五. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Indicators.py`

代碼脚本 ( Script ) 檔 : `Quantitative_Indicators.jl` 或 `Quantitative_Indicators.py` 是此「`QuantitativeTrading`」數量化交易模型的指標模組，計算日棒缐 ( K - Line ) 數據趨勢强度自定義示意指標的模組，實現從日棒缐 ( K - Line ) 原始數據計算抽象獲取自定義示意指標值的功能 .

六. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_Data_Cleaning.py`

代碼脚本 ( Script ) 檔 : `Quantitative_Data_Cleaning.jl` 或 `Quantitative_Data_Cleaning.py` 是此「`QuantitativeTrading`」數量化交易模型的數據初加工模組，初步清理日棒缐 ( K - Line ) 原始數據，並引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組，計算趨勢强度自定義示意指標，然後使計算結果標準化日棒缐 ( K - Line ) 數據，輸出至字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量「`stepping_data`」存儲，可進一步寫入自定義本地檔 ( .jld 或 .pickle , .csv , .xlsx ) 持久化存儲 .

七. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_MarketTiming.py`

代碼脚本 ( Script ) 檔 : `Quantitative_MarketTiming.jl` 或 `Quantitative_MarketTiming.py` 是此「`QuantitativeTrading`」數量化交易模型擇時 ( market timing ) 規則模組，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，然後操作標準化日棒缐 ( K - Line ) 數據，計算擇時 ( market timing ) 判斷及優化 ( optimization ) 擇時 ( market timing ) 規則參數 ( parameters ) 依據，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

八. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_PickStock.py`

代碼脚本 ( Script ) 檔 : `Quantitative_PickStock.jl` 或 `Quantitative_PickStock.py` 是此「`QuantitativeTrading`」數量化交易模型選股 ( pick stock ) 規則模組，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，操作標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_MarketTiming.jl`」或「`Quantitative_MarketTiming.py`」模組計算擇時 ( market timing ) 操作，再計算選股 ( pick stock ) 判斷及優化 ( optimization ) 選股 ( pick stock ) 規則參數 ( parameters ) 依據，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

九. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_SizePosition.py`

代碼脚本 ( Script ) 檔 : `Quantitative_SizePosition.jl` 或 `Quantitative_SizePosition.py` 是此「`QuantitativeTrading`」數量化交易模型倉位 ( size position ) 規則模組，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，操作標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_MarketTiming.jl`」或「`Quantitative_MarketTiming.py`」模組計算擇時 ( market timing ) 操作，引用「`Quantitative_PickStock.jl`」或「`Quantitative_PickStock.py`」模組計算選股 ( pick stock ) 操作，再計算倉位 ( size position ) 判斷及優化 ( optimization ) 倉位 ( size position ) 規則參數 ( parameters ) 依據，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

十. 代碼脚本檔 ( script file ) : `QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.jl` , `QuantitativeTrading/QuantitativeTradingPython/src/Quantitative_BackTesting.py`

代碼脚本 ( Script ) 檔 : `Quantitative_BackTesting.jl` 或 `Quantitative_BackTesting.py` 是此「`QuantitativeTrading`」數量化交易模型回測 ( back testing ) 模組，採取推進分析 ( stepper movement ) ( propulsion analysis ) 的方法，使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組計算趨勢强度自定義示意指標，操作標準化日棒缐 ( K - Line ) 數據，引用「`Quantitative_MarketTiming.jl`」或「`Quantitative_MarketTiming.py`」模組計算擇時 ( market timing ) 操作，引用「`Quantitative_PickStock.jl`」或「`Quantitative_PickStock.py`」模組計算選股 ( pick stock ) 操作，引用「`Quantitative_SizePosition.jl`」或「`Quantitative_SizePosition.py`」模組計算倉位 ( size position ) 操作，推進分析 ( stepper movement ) ( propulsion analysis ) 遍歷數據序列計算纍計盈虧額，函數計算結果返回字典類型 ( Julia - Base.Dict 或 Python - dict ) 數據變量存儲 .

十一. 純文本文檔 ( .txt ) : `QuantitativeTrading/QuantitativeTradingJulia/config.txt` , `QuantitativeTrading/QuantitativeTradingPython/config.txt`

純文本文檔 ( .txt ) : `QuantitativeTrading/QuantitativeTradingJulia/config.txt` , `QuantitativeTrading/QuantitativeTradingPython/config.txt` 是「`QuantitativeTradingJulia`」和「`QuantitativeTradingPython`」數量化交易模型的參數配置文檔 ( config file ) 行使運行參數傳入職能 .

十二. 檔案夾 ( folder ) : `QuantitativeTrading/Julia/` , `QuantitativeTrading/Python/`

檔案夾 ( folder )「`QuantitativeTrading/Julia/`」爲微軟視窗系統 ( Windows10 x86_64 ) 程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 二進位可執行檔 ( julia.exe ) 的儲存位置，需自行下載後，將其解壓縮，保存至「`C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe`」路徑.

檔案夾 ( folder )「`QuantitativeTrading/Python/`」爲微軟視窗系統 ( Windows10 x86_64 ) 程式設計語言 ( Python3 ) 解釋器 ( Interpreter ) 二進位可執行檔 ( python.exe ) 的儲存位置，需自行下載後，將其解壓縮，保存至「`C:/QuantitativeTrading/Python/Python311/python.exe`」路徑.

十三. 檔案夾 ( folder ) : `QuantitativeTrading/Data/`

檔案夾 ( folder )「`QuantitativeTrading/Data/`」爲日棒缐 ( K - Line ) 數據檔的保存位置 .

其中 :

1. 檔案夾 ( folder )「`QuantitativeTrading/Data/K-Day-source/`」爲日棒缐 ( K - Line ) 原始數據逗號 ( Comma ) 分隔符檔 ( .csv ) 的保存位置，如此例通過深圳市招商證券股份有限公司 ( CHINA MERCHANTS SECURITIES CO., LTD. ) 證券交易服務用戶端 ( zyyht.exe ) 下載得到中華人民共和國人民幣認購和交易的普通股票 ( A shares ) 數據逗號 ( Comma ) 分隔符檔 ( .csv ) 示例 .

2. 程式設計語言 ( computer programming language ) : Julia 數據檔 ( .jld ) 「`QuantitativeTrading/Data/steppingData.jld`」是使用「`Quantitative_Data_Cleaning.jl`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據本地存儲爲程式設計語言 ( computer programming language ) : Julia 數據持久化存儲 Hierarchical Data Format version 5 , HDF5 格式的數據 ( Julia data format , JLD ) 檔 ( .jld ) 示例 .

3. 程式設計語言 ( computer programming language ) : Python 數據檔 ( .pickle ) 「`QuantitativeTrading/Data/steppingData.pickle`」是使用「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據本地存儲爲程式設計語言 ( computer programming language ) : Python 數據持久化存儲序列化 ( pickling ) 二進位字節流 ( bytes ) 檔 ( .pickle ) 示例 .

4. 逗號 ( Comma ) 分隔符檔 ( .csv ) 「`QuantitativeTrading/Data/SZ#002611.csv`」是使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據持久化存儲爲本地逗號 ( Comma ) 分隔符檔 ( .csv ) 示例 .

5. 微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 「`QuantitativeTrading/Data/SZ#002611.xlsx`」是使用「`Quantitative_Data_Cleaning.jl`」或「`Quantitative_Data_Cleaning.py`」模組初步清理日棒缐 ( K - Line ) 原始數據獲得標準化日棒缐 ( K - Line ) 數據持久化存儲爲本地微軟電子表格 ( Windows - Office - Excel ) 檔 ( .xlsx ) 示例 .

十四. 代碼脚本檔 ( script file ) : `QuantitativeTrading/TradingAlgorithmModule.bas` , 微軟電子表格應用檔 ( Windows - Office - Excel - Visual Basic for Applications ) : `QuantitativeTrading/Client.xlsm`

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」可作爲用戶端 ( Client ) 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 計算.

代碼脚本檔「`TradingAlgorithmModule.bas`」是微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」運行時，需導入的標準模組 ( Module ) 代碼（必須），可在此代碼脚本檔内，自行修改 Visual Basic for Applications , VBA 代碼，擴展運算方法的連接 ( Client Request ) 項.

十五. 檔案夾 ( folder ) : `QuantitativeTrading/html/`

檔案夾 ( folder )「`QuantitativeTrading/html/`」爲使用瀏覽器 ( Browser ) 作爲用戶端 ( Client ) 時，數量化交易運算伺服器「`QuantitativeTrading`」向用戶端瀏覽器 ( Browser ) 發送 ( Respond ) 的標準通用標記語言代碼脚本 ( .html ) 檔.

其中 :

1. 代碼脚本檔「`index.html`」爲應用交互頁面，因應網址 ( Uniform Resource Locator , URL ) 爲 : 
`http://[::1]:10001/index.html`

2. 代碼脚本檔「`administrator.html`」爲管理頁面，因應網址 ( Uniform Resource Locator , URL ) 爲 : 
`http://[::1]:10001/administrator.html`

3. 逗號 ( Comma ) 分隔符檔 ( .csv )「`calculated.csv`」爲計算結果數據示例，是用戶端瀏覽器 ( Browser ) 應用交互頁面「`index.html`」計算結果表格内數據，單擊「保存運算結果數據文檔」按鈕 ( Button ) 後，從瀏覽器 ( Browser ) 應用交互頁面「`index.html`」計算結果表格内導出至本地硬盤 ( Disk , Read-Only Memory ) 存儲的數據文檔示例.

4. 逗號 ( Comma ) 分隔符檔 ( .csv )「`LogisticLog5PInputData.csv`」爲待計算的原數據示例，是用戶端瀏覽器 ( Browser ) 應用交互頁面「`index.html`」待計算表格内的原數據，單擊「讀取待處理的數據文檔」按鈕 ( Button ) 後，從本地硬盤 ( Disk , Read-Only Memory ) 導入至瀏覽器 ( Browser ) 應用交互頁面「`index.html`」待計算表格内的數據文檔示例.

可自行修改標準通用標記語言代碼脚本 ( .html ) 檔「`index.html`」「`SelectStatisticalAlgorithms.html`」「`InputHTML.html`」「`OutputHTML.html`」内的 HTML , JavaScript , CSS 代碼，擴展交互頁面「`index.html`」内數量化交易方法的連接 ( Browser Client Request ) 選項.

可自定義修改代碼脚本 ( Script ) 檔「`Quantitative_Indicators.jl`」或「`Quantitative_Indicators.py`」模組内函數，個性化調整擴展此量化交易模型日棒缐 ( K - Line ) 數據趨勢强度示意指標，並輔以調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.jl`」「`Quantitative_PickStock.jl`」「`Quantitative_SizePosition.jl`」「`Quantitative_BackTesting.jl`」或「`Quantitative_MarketTiming.py`」「`Quantitative_PickStock.py`」「`Quantitative_SizePosition.py`」「`Quantitative_BackTesting.py`」内函數 ( Function ) 因應協調，即可實現個性化擴展此量化交易模型效果 .

此量化交易模型「`QuantitativeTradingJulia`」的優化器 ( optimization ) 借用程式設計語言 ( computer programming language ) : Julia 第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`Optim`」模組的「`optimize`」函數 ( Function ) 實現，未做計算效率優化，可自行變更調整優化器，並自行調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.jl`」「`Quantitative_PickStock.jl`」「`Quantitative_SizePosition.jl`」内函數 ( Function ) 因應協調，可實現優化效率提速 .

此量化交易模型「`QuantitativeTradingPython`」的優化器 ( optimization ) 借用程式設計語言 ( computer programming language ) : Python 第三方擴展模組 ( third-party extensions ( libraries or modules ) ) : 「`scipy`」項目内優化模組「`optimize`」内「`minimize`」函數 ( Function ) 實現，未做計算效率優化，可自行變更調整優化器，並自行調整代碼脚本 ( Script ) 檔「`Quantitative_MarketTiming.py`」「`Quantitative_PickStock.py`」「`Quantitative_SizePosition.py`」内函數 ( Function ) 因應協調，可實現優化效率提速 .

**注意，現時此兩處尚不具實用性，需自行視具體問題個性化修整精進，使之具備實用性 :**

**1. 代碼脚本 ( Script ) 檔「`Quantitative_Indicators.jl`」「`Quantitative_Indicators.py`」計算趨勢强度示意值，從日棒缐 ( K - Line ) 數據抽象，即所謂交易策略，尚不具備實用性，需個性化自行調整完備，使之具有實用性 .**

**2. 量化交易模型「`QuantitativeTradingJulia`」「`QuantitativeTradingPython`」參數優化器 ( optimization ) 選用未做計算效率考量，尚不具備實用性，需酌情調整，可自行選用更換第三方優化器 ( optimization ) 提升計算效率，使之具有實用性 .**

---

Python3 Explain : Interface.py , Router.py , QuantitativeTradingServer.py , Interpolation_Fitting.py , Quantitative_Indicators.py , Quantitative_Data_Cleaning.py , Quantitative_MarketTiming.py , Quantitative_PickStock.py , Quantitative_SizePosition.py , Quantitative_BackTesting.py

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

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/bin/python3 /home/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=/home/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=/home/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Python/Python311/python.exe C:/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```

控制臺啓動傳參釋意, 各參數之間以一個空格字符 ( `SPACE` ) ( `00100000` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (自定義), 安裝配置的程式設計語言 ( Python ) 解釋器 ( Interpreter ) 環境的二進制可執行檔啓動存儲路徑全名, 預設值爲 :  `C:/QuantitativeTrading/Python/Python311/python.exe`

2. (必), (自定義), 語言 ( Python ) 程式代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.py` ) 的存儲路徑全名, 預設值爲 :  `C:/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py`

   注意, 因爲「`QuantitativeTradingServer.py`」檔中脚本代碼需要加載引入「`Interface.py`」檔, 所以需要保持「`QuantitativeTradingServer.py`」檔與「`Interface.py`」檔在相同目錄下, 不然就需要手動修改「`QuantitativeTradingServer.py`」檔中有關引用「`Interface.py`」檔的加載路徑代碼, 以確保能正確引入「`Interface.py`」檔.

3. (選), (鍵 `configFile` 固定, 值 `C:/QuantitativeTrading/QuantitativeTradingPython/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 預設值爲 :  `configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt`

4. (選), (鍵 `interface_Function` 固定, 值 `file_Monitor` 自定義, [ `file_Monitor`, `http_Server`, `http_Client` ] 取其一), 用於傳入選擇啓動哪一種接口服務, 外設硬盤 ( Hard Disk ) 文檔 ( File ) 作橋, 外設網卡 ( Network Interface Card ) 埠 ( Port ) 作橋, 預設值爲 :  `interface_Function=file_Monitor`

以下是當參數 : `interface_Function` 取 : `http_Server` 值時, 可在控制臺命令列傳入的參數 :

14. (選), (鍵 `host` 固定, 值 `::0` 自定義, 例如 [ `::0`, `::1`, `0.0.0.0`, `127.0.0.1` ] 取其一), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::0`

15. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 自定義設定的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

16. (選), (鍵 `Key` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入自定義的訪問網站驗證 ( `Authorization` ) 用戶名和密碼, 預設值爲 :  `Key=username:password`

17. (選), (鍵 `Is_multi_thread` 固定, 值 `False` 自定義, 例如 [ `True`, `False` ] 取其一), 用於判斷是否開啓多缐程 ( Threading ) 並發, 預設值爲 :  `Is_multi_thread=False`

18. (選), (鍵 `number_Worker_process` 固定, 值 `0` 自定義), 用於傳入創建並發數目, 子進程 ( Sub Process ) 並發, 或者, 子缐程 ( Sub Threading ) 並發, 即, 可以設爲等於物理中央處理器 ( Central Processing Unit ) 的數目, 取 0 值表示不開啓並發架構, 預設值爲 :  `number_Worker_process=0`

19. (選), (鍵 `webPath` 固定, 值 `C:/QuantitativeTrading/html/` 自定義), 用於傳入伺服器 ( `http_Server` ) 啓動運行的自定義的根目錄 (項目空間) 路徑全名, 預設值爲 :  `webPath=C:/QuantitativeTrading/html/`

以下是當參數 : `interface_Function` 取 : `http_Client` 值時, 可在控制臺命令列傳入的參數 :

14. (選), (鍵 `host` 固定, 值 `::1` 自定義, 例如 [ `::1`, `127.0.0.1`, `localhost` ] 取其一), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::1`

15. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

20. (選), (鍵 `URL` 固定, 值 `/` 自定義, 例如配置爲 `http://[::1]:10001/index.html` 值), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的地址, 萬維網統一資源定位系統 ( Uniform Resource Locator ) 地址字符串, 預設值爲 :  `URL=/`

21. (選), (鍵 `Method` 固定, 值 `POST` 自定義, 例如 [ `POST`, `GET` ] 取其一), 用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的類型, 預設值爲 :  `Method=POST`

22. (選), (鍵 `time_out` 固定, 值 `0.5` 自定義), 用於傳入設置鏈接超時自動中斷的時長，單位 ( Unit ) 爲秒 ( Second ), 預設值爲 :  `time_out=0.5`

23. (選), (鍵 `request_Auth` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的驗證 ( Authorization ) 的賬號密碼字符串, 預設值爲 :  `request_Auth=username:password`

24. (選), (鍵 `request_Cookie` 固定, 其中 `Cookie` 名稱 `Session_ID` 可以設計爲固定, `Cookie` 值 `request_Key->username:password` 可以設計爲自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的 `Cookies` 值字符串, 預設值爲 :  `request_Cookie=Session_ID=request_Key->username:password`

量化交易運算模組説明 :

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

Julia Explain : Interface.jl , Router.jl , QuantitativeTradingServer.jl , Interpolation_Fitting.jl , Quantitative_Indicators.jl , Quantitative_Data_Cleaning.jl , Quantitative_MarketTiming.jl , Quantitative_PickStock.jl , Quantitative_SizePosition.jl , Quantitative_BackTesting.jl

計算機程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 與作業系統 ( Operating System ) 環境配置釋明 :

Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30

Interpreter: julia-1.10.10-win64.exe

Interpreter: julia-1.10.10-linux-x86_64.tar.gz

Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280

Interpreter: julia-1.10.10-linux-aarch64.tar.gz

注意,

程式代碼脚本檔 `Interface.jl` 裏, 函數 `http_Server`, `http_Client` 使用了第三方模組 `HTTP.jl` , `JSON.jl` 擴展包 ( packages ) ,

程式代碼脚本檔 `QuantitativeTradingServer.jl` 和 `Router.jl` 裏, 函數 `do_data`, `do_Request`, `do_Response` 使用了第三方模組 `JSON.jl` 擴展包 ( packages ) ,

所以, 需事先安裝配置成功, 加載導入之後, 才能正常運行.

首先在作業系統 ( Operating System ) 控制臺命令列窗口 ( bash, cmd ) 啓動程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 進入語言 ( Julia ) 的運行環境 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/julia/julia-1.10.10/bin/julia --project=/home/QuantitativeTrading/QuantitativeTradingJulia/
```

微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe --project=C:/QuantitativeTrading/QuantitativeTradingJulia/
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

也可以自定義從新創建隔離運行環境 , 創建過程如下 ：

微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 配置程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 隔離運行環境 :

1. 首先，微軟視窗系統 ( Window10 x86_64 ) 控制臺命令列 ( cmd ) 啓動程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 進入語言 ( Julia ) 的運行環境 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe
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
C:\QuantitativeTrading\QuantitativeTradingJulia> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe --project=C:/QuantitativeTrading/QuantitativeTradingJulia/
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

julia - 1.10.10

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

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/julia/julia-1.10.10/bin/julia -p 4 --project=/home/QuantitativeTrading/QuantitativeTradingJulia/ /home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt interface_Function=http_Server webPath=/home/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe -p 4 --project=C:/QuantitativeTrading/QuantitativeTradingJulia/ C:/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```

控制臺啓動傳參釋意, 各參數之間以一個空格字符 ( `SPACE` ) ( `00100000` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (自定義), 安裝配置的程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 環境的二進制可執行檔啓動存儲路徑全名, 預設值爲 :  `C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe`

2. (必), (自定義), 語言 ( Julia ) 程式代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl` ) 的存儲路徑全名, 預設值爲 :  `C:/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl`

   注意, 因爲「`QuantitativeTradingServer.jl`」檔中脚本代碼需要加載引入「`Interface.jl`」檔, 所以需要保持「`QuantitativeTradingServer.jl`」檔與「`Interface.jl`」檔在相同目錄下, 不然就需要手動修改「`QuantitativeTradingServer.jl`」檔中有關引用「`Interface.jl`」檔的加載路徑代碼, 以確保能正確引入「`Interface.jl`」檔.

3. (選), (鍵 `configFile` 固定, 值 `C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 預設值爲 :  `configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt`

4. (選), (鍵 `interface_Function` 固定, 值 `file_Monitor` 自定義, [ `file_Monitor`, `http_Server`, `http_Client` ] 取其一), 用於傳入選擇啓動哪一種接口服務, 外設硬盤 ( Hard Disk ) 文檔 ( File ) 作橋, 外設網卡 ( Network Interface Card ) 埠 ( Port ) 作橋, 預設值爲 :  `interface_Function=file_Monitor`

以下是當參數 : `interface_Function` 取 : `http_Server` 值時, 可在控制臺命令列傳入的參數 :

7. (選), (鍵 `number_Worker_threads` 固定, 值 `0` 自定義), 用於傳入創建並發數目, 子進程 ( Sub Process ) 並發, 或者, 子缐程 ( Sub Threading ) 並發, 即, 可以設爲等於物理中央處理器 ( Central Processing Unit ) 的數目, 取 `0` 值表示不開啓並發架構, 預設值爲 :  `number_Worker_threads=0`

15. (選), (鍵 `host` 固定, 值 `::0` 自定義, 例如 [ `::0`, `::1`, `0.0.0.0`, `127.0.0.1`, `localhost` ] 取其一), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::0`

16. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 自定義設定的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

17. (選), (鍵 `key` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入自定義的訪問網站驗證 ( `Authorization` ) 用戶名和密碼, 預設值爲 :  `key=username:password`

18. (選), (鍵 `isConcurrencyHierarchy` 固定, 值 `Tasks` 自定義, 例如 [ `Tasks`, `Multi-Threading`, `Multi-Processes` ] 取其一), 用於選擇並發種類, 多進程 ( Process ) 並發, 或者, 多缐程 ( Threading ) 並發, 或者, 多協程 ( Tasks ) 並發, 當取值為多缐程 `Multi-Threading` 時，必須在啓動 Julia 解釋器之前，在控制臺命令行修改環境變量 : `export JULIA_NUM_THREADS=4(Linux OSX)` 或 `set JULIA_NUM_THREADS=4(Windows)` 來設置預創建多個缐程, 預設值爲 :  `isConcurrencyHierarchy=Tasks`

19. (選), (鍵 `webPath` 固定, 值 `C:/QuantitativeTrading/html/` 自定義), 用於傳入伺服器 ( `http_Server` ) 啓動運行的自定義的根目錄 (項目空間) 路徑全名, 預設值爲 :  `webPath=C:/QuantitativeTrading/html/`

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

量化交易運算模組説明 :

1. 代碼脚本檔 ( script file ) 「`QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl`」運行示例 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/julia/julia-1.10.10/bin/julia -p 4 --project=/QuantitativeTrading/QuantitativeTradingJulia/ /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt input_K_Line=/home/QuantitativeTrading/Data/K-Day-source/ is_save_JLD=false output_jld_K_Line=/home/QuantitativeTrading/Data/steppingData.jld is_save_csv=false output_csv_K_Line=/home/QuantitativeTrading/Data/K-Day/ is_save_xlsx=false output_xlsx_K_Line=/home/QuantitativeTrading/Data/K-Day/
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe -p 4 --project=C:/QuantitativeTrading/QuantitativeTradingJulia/ C:/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_JLD=true output_jld_K_Line=C:/QuantitativeTrading/Data/steppingData.jld is_save_csv=false output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=false output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/
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

微軟視窗系統 ( Windows10 x86_64 ) 使用 Batchfile 代碼脚本檔「startServer.bat」啓動數量化交易運算伺服器「QuantitativeTrading」 :

使用説明:

Window-cmd : startServer.bat

微軟視窗系統 ( Windows10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/Windows/System32/cmd.exe C:/QuantitativeTrading/startServer.bat C:/QuantitativeTrading/config.txt
```

控制臺啓動傳參釋意 :

1. (必), (固定), 微軟視窗作業系統 ( Window10 x86_64 ) 控制臺命令列窗口的二進制可執行檔 ( `cmd.exe` ) 啓動存儲路徑全名, 作業系統 ( Window10 x86_64 ) 固定存儲在路徑爲 :  `C:/Windows/System32/cmd.exe`

2. (必), (自定義), 微軟視窗系統 ( Windows10 x86_64 ) 批處理程式代碼脚本 ( .bat ) 檔 ( `startServer.bat` ) 的存儲路徑全名, 預設值爲 :  `C:/QuantitativeTrading/startServer.bat`

3. (選) (值 `C:/QuantitativeTrading/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 配置文檔裏的橫向列首可用一個井號字符 ( `#` ) 注釋掉, 使用井號字符 ( `#` ) 注釋掉之後，該橫向列的參數即不會傳入從而失效, 若需啓用可刪除橫向列首的井號字符 ( `#` ) 即可, 注意橫向列首的空格也要刪除, 每一個橫向列的參數必須頂格書寫, 預設值爲 :  `C:/QuantitativeTrading/config.txt`

![]()

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 使用 Shell 代碼脚本檔「startServer.sh」啓動數量化交易運算伺服器「QuantitativeTrading」 :

使用説明:

Android-Termux-Ubuntu-bash : startServer.sh

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /bin/bash /home/QuantitativeTrading/startServer.sh configFile=/home/QuantitativeTrading/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/ scriptFile=/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=/home/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

控制臺啓動傳參釋意, 各參數之間以一個逗號 ( Comma ) 字符 ( `,` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (固定), 谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 控制臺命令列窗口的二進制可執行檔 ( `bash` ) 啓動存儲路徑全名, 作業系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 固定存儲在路徑爲 :  `/bin/bash`

2. (必), (自定義), 谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 批處理程式代碼脚本 ( .sh ) 檔 ( `startServer.sh` ) 的存儲路徑全名, 預設值爲 :  `C:/QuantitativeTrading/startServer.sh`

3. (選), (鍵 `configFile` 固定, 值 `/home/QuantitativeTrading/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 配置文檔裏的橫向列首可用一個井號字符 ( `#` ) 注釋掉, 使用井號字符 ( `#` ) 注釋掉之後，該橫向列的參數即不會傳入從而失效, 若需啓用可刪除橫向列首的井號字符 ( `#` ) 即可, 注意橫向列首的空格也要刪除, 每一個橫向列的參數必須頂格書寫, 預設值爲 :  `configFile=/home/QuantitativeTrading/config.txt`

4. (選), (鍵 `executableFile` 固定, 值 `/bin/julia` 自定義, 例如 [ `/bin/julia`, `/bin/python3` ] 可自定義取其一配置), 用於傳入選擇啓動哪一種程式語言編寫的接口服務, 計算機 ( Computer ) 程式 ( Programming ) 設計 Julia 語言, 計算機 ( Computer ) 程式 ( Programming ) 設計 Python 語言, 預設值爲 :  `executableFile=/bin/julia`

5. (選), (鍵 `interpreterFile` 固定, 值 `-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/` 自定義, 且可爲空, 即取 `interpreterFile=` 的形式, 亦可不傳入該參數), 用於傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 環境的二進制可執行檔, 於作業系統控制臺命令列 ( Operating System Console Command ) 使用指令啓動時傳入的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( Comma ) 字符 ( `,` ) 連接, 批處理程式脚本 `startServer.sh` 已設計爲可自動將逗號 ( Comma ) 字符 ( `,` ) 替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 的運行環境, 預設值爲 :  `interpreterFile=-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/`

6. (選), (鍵 `scriptFile` 固定, 值 `/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl` 自定義, 例如 [ `/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl`, `/home/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py` ] 可自定義取其一配置), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl`, `QuantitativeTradingServer.py` ) 的存儲路徑全名, 預設值爲 :  `scriptFile=/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl`

7. (選), (鍵 `configInstructions` 固定, 取值自定義, 且可爲空, 即取 `configInstructions=` 的形式, 亦可不傳入該參數), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl`, `QuantitativeTradingServer.py` ) 的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( Comma ) 字符 ( `,` ) 連接, 批處理程式脚本 `startServer.sh` 已設計爲可自動將逗號 ( Comma ) 字符 ( `,` ) 替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl`, `QuantitativeTradingServer.py` ) 的運行環境, 預設值爲 :  `configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=/home/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks`

---

c2exe.c

程式設計 C 語言, 使用 FILE *fstream = popen("shell Code Script", "r") 函數, 創建子進程 ( Sub Process ), 並在子進程 ( Sub Process ) 運行外部二進制可執行檔 ( julia.exe, python.exe, ), 功能與批處理檔 startServer.sh 類似.

使用説明:

![]()

微軟視窗系統 ( Windows10 x86_64 ) 使用二進位可執行檔「QuantitativeTrading.exe」啓動數量化交易運算伺服器「QuantitativeTrading」 :

微軟視窗系統 ( Windows10 x86_64 )

Windows10 x86_64 Compiler :

Minimalist GNU on Windows ( MinGW-w64 ) mingw64-8.1.0-release-posix-seh-rt_v6-rev0

控制臺命令列 ( cmd ) 運行編譯指令 :
```
C:\QuantitativeTrading> C:\MinGW64\bin\gcc.exe C:/QuantitativeTrading/c/c2exe.c -o C:/QuantitativeTrading/QuantitativeTrading.exe
```

控制臺命令列 ( cmd ) 運行顯示中文字符指令 :
```
C:\QuantitativeTrading> chcp 65001
```

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\QuantitativeTrading> C:/QuantitativeTrading/QuantitativeTrading.exe configFile=C:/QuantitativeTrading/config.txt executableFile=C:/QuantitativeTrading/Julia/Julia-1.10.10/julia.exe interpreterFile=-p,4,--project=C:/QuantitativeTrading/QuantitativeTradingJulia/ scriptFile=C:/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=C:/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

![]()

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 ) 使用二進位可執行檔「QuantitativeTrading.exe」啓動數量化交易運算伺服器「QuantitativeTrading」 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

Android-11 Termux-0.118 Ubuntu-22.04 Arm64-aarch64 Compiler :

gcc v9.3.0 , g++ v9.3.0

控制臺命令列 ( bash ) 運行編譯指令 :
```
root@localhost:~# /bin/gcc /home/QuantitativeTrading/c/c2exe.c -o /home/QuantitativeTrading/QuantitativeTrading.exe
```

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /home/QuantitativeTrading/QuantitativeTrading.exe configFile=/home/QuantitativeTrading/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/ scriptFile=/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=/home/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

![]()

控制臺啓動傳參釋意, 各參數之間以一個逗號 ( Comma ) 字符 ( `,` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (自定義), 計算機 C 語言 ( Computer Programming C Language ) 程式設計 ( Programming ) 代碼檔 ( `c2exe.c` ), 使用編譯器 ( Compiler ), 經過編譯之後, 轉換爲二進制可執行檔 ( .exe ), 啓動運行指令存儲路徑全名, 例如可自定義配置爲 :  `C:/QuantitativeTrading/QuantitativeTrading.exe`

2. (選) (值 `C:/QuantitativeTrading/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 配置文檔裏的橫向列首可用一個井號字符 ( `#` ) 注釋掉, 使用井號字符 ( `#` ) 注釋掉之後，該橫向列的參數即不會傳入從而失效, 若需啓用可刪除橫向列首的井號字符 ( `#` ) 即可, 注意橫向列首的空格也要刪除, 每一個橫向列的參數必須頂格書寫, 預設值爲 :  `C:/QuantitativeTrading/config.txt`

3. (選), (鍵 `executableFile` 固定, 值 `/bin/julia` 自定義, 例如 [ `/bin/julia`, `/bin/python3` ] 可自定義取其一配置), 用於傳入選擇啓動哪一種程式語言編寫的接口服務, 計算機 ( Computer ) 程式 ( Programming ) 設計 Julia 語言, 計算機 ( Computer ) 程式 ( Programming ) 設計 Python 語言, 預設值爲 :  `executableFile=/bin/julia`

4. (選), (鍵 `interpreterFile` 固定, 值 `-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/` 自定義, 且可爲空, 即取 `interpreterFile=` 的形式, 亦可不傳入該參數), 用於傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 環境的二進制可執行檔, 於作業系統控制臺命令列 ( Operating System Console Command ) 使用指令啓動時傳入的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( Comma ) 字符 ( `,` ) 連接, 代碼文檔 `c2exe.c` 已設計爲可自動將逗號 ( Comma ) 字符 ( `,` ) 替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入程式設計語言 ( Julia, Python3 ) 解釋器 ( Interpreter ) 的運行環境, 預設值爲 :  `interpreterFile=-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/`

5. (選), (鍵 `scriptFile` 固定, 值 `/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl` 自定義, 例如 [ `/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl`, `/home/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py` ] 可自定義取其一配置), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl`, `QuantitativeTradingServer.py` ) 的存儲路徑全名, 預設值爲 :  `scriptFile=/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl`

6. (選), (鍵 `configInstructions` 固定, 取值自定義, 且可爲空, 即取 `configInstructions=` 的形式, 亦可不傳入該參數), 用於傳入程式 ( Programming ) 設計語言 ( Julia, Python3 ) 代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl`, `QuantitativeTradingServer.py` ) 的運行參數, 若爲多參數, 則各參數之間用一個逗號 ( Comma ) 字符 ( `,` ) 連接, 代碼文檔 `c2exe.c` 已設計爲可自動將逗號 ( Comma ) 字符 ( `,` ) 替換爲空格字符 ( `SPACE` ) ( `00100000` ), 然後再傳入代碼脚本 ( Script ) 檔 ( `QuantitativeTradingServer.jl`, `QuantitativeTradingServer.py` ) 的運行環境, 預設值爲 :  `configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=/home/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks`

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

一. 可使用谷歌 ( Google - Chromium ) 或火狐 ( Mozilla - Firefox ) 瀏覽器 ( Browser ) 作爲用戶端 ( Client ) 連接數量化交易運算伺服器「QuantitativeTrading」打開交互介面.

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

二. 可使用項目空間内的微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」作爲用戶端 ( Client ) 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 計算.

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」打開之後，菜單欄 ( Excel menu bar ) 之 :

1. 「`加載項 ( Excel Add-in )`」 → 「`數量化交易 ( Quantitative Trading )`」 → 「`人機交互介面 ( operation panel )`」，爲連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 計算的操作面板.

2. 「`加載項 ( Excel Add-in )`」 → 「`數量化交易 ( Quantitative Trading )`」 → 「`數量化交易運算伺服器 ( Quantitative Trading server )`」，爲從微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔 ( `Client.xlsm` ) 内，通過創建子進程 ( Sub Process ) 調用微軟視窗系統 ( Windows10 x86_64 ) 控制臺命令列 ( `cmd.exe` ) 應用，啓動數量化交易運算伺服器「`QuantitativeTrading`」的運行指令.

其中，項目空間内的代碼脚本檔「`TradingAlgorithmModule.bas`」是微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「`Client.xlsm`」運行時，需導入的標準模組 ( Module ) 代碼（必須），可在此代碼脚本檔内，自行修改 Visual Basic for Applications , VBA 代碼，擴展數量化交易方法的連接 ( Client Request ) 項.

微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用檔「Client.xlsm」轉換 JSON 字符串類型的變量 ( JSON - String Object ) 與微軟電子表格字典類型的變量 ( Windows - Office - Excel - Visual Basic for Applications - Dict Object ) 數據類型，借用微軟電子表格 ( Windows - Office - Excel - Visual Basic for Applications ) 應用的第三方擴展類模組「VBA-JSON : JsonConverter.bas」實現.

三. 也可自行選擇其他程式設計語言編寫用戶端鏈接器 ( Client ) 應用，連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 計算，比如，使用 JavaScript 語言的 NW.js , Electron 解析器等製作用戶端交互介面，或使用 C 語言的 GNU Image Manipulation Program - GIMP Toolkit , GTK+ 圖形框架等製作用戶端交互介面，然後，使用 Julia 或 Python 語言的數量化交易運算伺服器「`QuantitativeTrading`」作爲後端行使數據計算功能，這樣即可實現類似跨語言混合編程的效果.

使用自行製作的用戶端鏈接器 ( Client ) 時，連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 計算，可使用如下網址 ( Uniform Resource Locator , URL ) : 

1. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 插值 ( Interpolation ) 計算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/Interpolation?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=BSpline(Cubic)&algorithmLambda=0.0&algorithmKei=2.0&algorithmDi=1.0&algorithmEith=1.0
```

2. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 多項式 ( 3 階 ) 方程 ( Polynomial ( Cubic ) ) 模型擬合 ( Fit ) 計算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/Polynomial3Fit?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=Polynomial3Fit
```

3. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 邏輯 4 , 5 參數模型 ( 4 , 5 - parameter logistic curve ) 擬合 ( Fit ) 計算，使用網址 ( Uniform Resource Locator , URL ) : 
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

4. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 原始日棒缐 ( K-Line day ) 數據清洗 ( Preprocessing ) 運算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/KLineCleaning?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=KLineCleaning&configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt&input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/&is_save_JLD=true&output_jld_K_Line=C:/QuantitativeTrading/Data/steppingData.jld&is_save_pickle=True&output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle&is_save_csv=true&output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/&is_save_xlsx=true&output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/
```

用戶端 ( Client - Request ) 發送 POST 請求的數據爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Request - POST = 
```
{
    "configFile" : ["C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt"],
    // "configFile" : ["C:/QuantitativeTrading/QuantitativeTradingPython/config.txt"],
    "input_K_Line" : ["C:/QuantitativeTrading/Data/K-Day-source/"],
    "is_save_JLD" : ["true"],
    "output_jld_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],
    "is_save_pickle" : ["True"],
    "output_pickle_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "is_save_csv" : ["true"],
    "output_csv_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "is_save_xlsx" : ["true"],
    "output_xlsx_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "Cleaned_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],
    // "Cleaned_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "source_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ]
        },
        ...
    }
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

5. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 依據數量化指標擇時 ( market timing ) 運算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/MarketTiming?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=MarketTiming&trading_direction=Long_Position_and_Short_Selling&ticker_symbol=["all"]&is_Optimize=false&MarketTiming_Pdata_0=[3,+0.1,-0.1,0.0]&MarketTiming_Plower=["-Infinity","-Infinity","-Infinity","-Infinity"]&MarketTiming_Pupper=["+Infinity","+Infinity","+Infinity","+Infinity"]&MarketTiming_weight=[]&Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld&training_data_file=C:/QuantitativeTrading/Data/trainingData.jld&testing_data_file=C:/QuantitativeTrading/Data/testingData.jld&stepping_data_file=C:/QuantitativeTrading/Data/steppingData.jld
```

用戶端 ( Client - Request ) 發送 POST 請求的數據爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Request - POST = 
```
{
    "configFile" : ["C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt"],  // ["C:/QuantitativeTrading/QuantitativeTradingPython/config.txt"],
    "input_K_Line" : ["C:/QuantitativeTrading/Data/K-Day-source/"],
    "is_save_JLD" : ["true"],
    "output_jld_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],
    "is_save_pickle" : ["True"],
    "output_pickle_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "is_save_csv" : ["True"],
    "output_csv_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "is_save_xlsx" : ["False"],
    "output_xlsx_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "Cleaned_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "trading_direction" : ["Long_Position_and_Short_Selling"],
    "ticker_symbol" : ["all"],
    "is_Optimize" : ["false"],
    "risk_threshold" : [0.0],
    "training_ticker_symbol" : ["all"],
    "training_sequence_length" : [60],
    "testing_ticker_symbol" : ["all"],
    "testing_sequence_length" : [1],
    "MarketTiming_Pdata_0" : [3, +0.1, -0.1, 0.0],
    "MarketTiming_Plower" : ["-Infinity", "-Infinity", "-Infinity", "-Infinity"],
    "MarketTiming_Pupper" : ["+Infinity", "+Infinity", "+Infinity", "+Infinity"],
    "MarketTiming_weight" : [],
    "PickStock_Pdata_0" : [3, 5],
    "PickStock_Plower" : ["-Infinity", "-Infinity"],
    "PickStock_Pupper" : ["+Infinity", "+Infinity"],
    "PickStock_weight" : [],
    "SizePosition_Pdata_0" : [1.0, "average"],
    "SizePosition_Plower" : [0.0, 0.0],
    "SizePosition_Pupper" : [1.0, 1.0],
    "SizePosition_weight" : [],
    "training_data_file" : ["C:/QuantitativeTrading/Data/trainingData.jld"],  // ["C:/QuantitativeTrading/Data/trainingData.pickle"],
    "testing_data_file" : ["C:/QuantitativeTrading/Data/testingData.jld"],  // ["C:/QuantitativeTrading/Data/testingData.pickle"],
    "stepping_data_file" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "source_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ]
        }
    },
    "training_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "testing_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "stepping_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    }
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

6. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 依據數量化指標選股 ( pick stock ) 運算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/PickStock?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=PickStock&trading_direction=Long_Position_and_Short_Selling&ticker_symbol=["all"]&is_Optimize=false&MarketTiming_Pdata_0=[3,+0.1,-0.1,0.0]&MarketTiming_Plower=["-Infinity","-Infinity","-Infinity","-Infinity"]&MarketTiming_Pupper=["+Infinity","+Infinity","+Infinity","+Infinity"]&MarketTiming_weight=[]&PickStock_Pdata_0=[3,5]&PickStock_Plower=["-Infinity","-Infinity"]&PickStock_Pupper=["+Infinity","+Infinity"]&PickStock_weight=[]&Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld&training_data_file=C:/QuantitativeTrading/Data/trainingData.jld&testing_data_file=C:/QuantitativeTrading/Data/testingData.jld&stepping_data_file=C:/QuantitativeTrading/Data/steppingData.jld
```

用戶端 ( Client - Request ) 發送 POST 請求的數據爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Request - POST = 
```
{
    "configFile" : ["C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt"],  // ["C:/QuantitativeTrading/QuantitativeTradingPython/config.txt"],
    "input_K_Line" : ["C:/QuantitativeTrading/Data/K-Day-source/"],
    "is_save_JLD" : ["true"],
    "output_jld_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],
    "is_save_pickle" : ["True"],
    "output_pickle_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "is_save_csv" : ["True"],
    "output_csv_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "is_save_xlsx" : ["False"],
    "output_xlsx_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "Cleaned_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "trading_direction" : ["Long_Position_and_Short_Selling"],
    "ticker_symbol" : ["all"],
    "is_Optimize" : ["false"],
    "risk_threshold" : [0.0],
    "training_ticker_symbol" : ["all"],
    "training_sequence_length" : [60],
    "testing_ticker_symbol" : ["all"],
    "testing_sequence_length" : [1],
    "MarketTiming_Pdata_0" : [3, +0.1, -0.1, 0.0],
    "MarketTiming_Plower" : ["-Infinity", "-Infinity", "-Infinity", "-Infinity"],
    "MarketTiming_Pupper" : ["+Infinity", "+Infinity", "+Infinity", "+Infinity"],
    "MarketTiming_weight" : [],
    "PickStock_Pdata_0" : [3, 5],
    "PickStock_Plower" : ["-Infinity", "-Infinity"],
    "PickStock_Pupper" : ["+Infinity", "+Infinity"],
    "PickStock_weight" : [],
    "SizePosition_Pdata_0" : [1.0, "average"],
    "SizePosition_Plower" : [0.0, 0.0],
    "SizePosition_Pupper" : [1.0, 1.0],
    "SizePosition_weight" : [],
    "training_data_file" : ["C:/QuantitativeTrading/Data/trainingData.jld"],  // ["C:/QuantitativeTrading/Data/trainingData.pickle"],
    "testing_data_file" : ["C:/QuantitativeTrading/Data/testingData.jld"],  // ["C:/QuantitativeTrading/Data/testingData.pickle"],
    "stepping_data_file" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "source_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ]
        }
    },
    "training_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "testing_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "stepping_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    }
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

7. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 依據數量化指標倉位配比 ( size position ) 運算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/SizePosition?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=SizePosition&trading_direction=Long_Position_and_Short_Selling&ticker_symbol=["all"]&is_Optimize=false&MarketTiming_Pdata_0=[3,+0.1,-0.1,0.0]&MarketTiming_Plower=["-Infinity","-Infinity","-Infinity","-Infinity"]&MarketTiming_Pupper=["+Infinity","+Infinity","+Infinity","+Infinity"]&MarketTiming_weight=[]&PickStock_Pdata_0=[3,5]&PickStock_Plower=["-Infinity","-Infinity"]&PickStock_Pupper=["+Infinity","+Infinity"]&PickStock_weight=[]&SizePosition_Pdata_0=[1.0,"average"]&SizePosition_Plower=[0.0,0.0]&SizePosition_Pupper=[1.0,1.0]&SizePosition_weight=[]&Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld&training_data_file=C:/QuantitativeTrading/Data/trainingData.jld&testing_data_file=C:/QuantitativeTrading/Data/testingData.jld&stepping_data_file=C:/QuantitativeTrading/Data/steppingData.jld
```

用戶端 ( Client - Request ) 發送 POST 請求的數據爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Request - POST = 
```
{
    "configFile" : ["C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt"],  // ["C:/QuantitativeTrading/QuantitativeTradingPython/config.txt"],
    "input_K_Line" : ["C:/QuantitativeTrading/Data/K-Day-source/"],
    "is_save_JLD" : ["true"],
    "output_jld_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],
    "is_save_pickle" : ["True"],
    "output_pickle_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "is_save_csv" : ["True"],
    "output_csv_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "is_save_xlsx" : ["False"],
    "output_xlsx_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "Cleaned_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "trading_direction" : ["Long_Position_and_Short_Selling"],
    "ticker_symbol" : ["all"],
    "is_Optimize" : ["false"],
    "risk_threshold" : [0.0],
    "training_ticker_symbol" : ["all"],
    "training_sequence_length" : [60],
    "testing_ticker_symbol" : ["all"],
    "testing_sequence_length" : [1],
    "MarketTiming_Pdata_0" : [3, +0.1, -0.1, 0.0],
    "MarketTiming_Plower" : ["-Infinity", "-Infinity", "-Infinity", "-Infinity"],
    "MarketTiming_Pupper" : ["+Infinity", "+Infinity", "+Infinity", "+Infinity"],
    "MarketTiming_weight" : [],
    "PickStock_Pdata_0" : [3, 5],
    "PickStock_Plower" : ["-Infinity", "-Infinity"],
    "PickStock_Pupper" : ["+Infinity", "+Infinity"],
    "PickStock_weight" : [],
    "SizePosition_Pdata_0" : [1.0, "average"],
    "SizePosition_Plower" : [0.0, 0.0],
    "SizePosition_Pupper" : [1.0, 1.0],
    "SizePosition_weight" : [],
    "training_data_file" : ["C:/QuantitativeTrading/Data/trainingData.jld"],  // ["C:/QuantitativeTrading/Data/trainingData.pickle"],
    "testing_data_file" : ["C:/QuantitativeTrading/Data/testingData.jld"],  // ["C:/QuantitativeTrading/Data/testingData.pickle"],
    "stepping_data_file" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "source_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ]
        }
    },
    "training_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "testing_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "stepping_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    }
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

8. 連接數量化交易運算伺服器「`QuantitativeTrading`」做 ( Client - Request ) 回測 ( back testing ) 如：步進分析 ( stepper movement , propulsion analysis ) 運算，使用網址 ( Uniform Resource Locator , URL ) : 
```
http://[::1]:10001/BackTesting?Key=username:password&algorithmUser=username&algorithmPass=password&algorithmName=BackTesting&trading_direction=Long_Position_and_Short_Selling&ticker_symbol=["all"]&is_Optimize=false&MarketTiming_Pdata_0=[3,+0.1,-0.1,0.0]&MarketTiming_Plower=["-Infinity","-Infinity","-Infinity","-Infinity"]&MarketTiming_Pupper=["+Infinity","+Infinity","+Infinity","+Infinity"]&MarketTiming_weight=[]&PickStock_Pdata_0=[3,5]&PickStock_Plower=["-Infinity","-Infinity"]&PickStock_Pupper=["+Infinity","+Infinity"]&PickStock_weight=[]&SizePosition_Pdata_0=[1.0,"average"]&SizePosition_Plower=[0.0,0.0]&SizePosition_Pupper=[1.0,1.0]&SizePosition_weight=[]&risk_threshold=0.0&training_sequence_length=60&training_ticker_symbol=["all"]&testing_sequence_length=1&testing_ticker_symbol=["all"]&Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld&training_data_file=C:/QuantitativeTrading/Data/trainingData.jld&testing_data_file=C:/QuantitativeTrading/Data/testingData.jld&stepping_data_file=C:/QuantitativeTrading/Data/steppingData.jld
```

用戶端 ( Client - Request ) 發送 POST 請求的數據爲 JSON 字符串 ( JSON String ) 類型，數據格式可類比如下 :

Request - POST = 
```
{
    "configFile" : ["C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt"],  // ["C:/QuantitativeTrading/QuantitativeTradingPython/config.txt"],
    "input_K_Line" : ["C:/QuantitativeTrading/Data/K-Day-source/"],
    "is_save_JLD" : ["true"],
    "output_jld_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],
    "is_save_pickle" : ["True"],
    "output_pickle_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "is_save_csv" : ["True"],
    "output_csv_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "is_save_xlsx" : ["False"],
    "output_xlsx_K_Line" : ["C:/QuantitativeTrading/Data/K-Day/"],
    "Cleaned_K_Line" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "trading_direction" : ["Long_Position_and_Short_Selling"],
    "ticker_symbol" : ["all"],
    "is_Optimize" : ["false"],
    "risk_threshold" : [0.0],
    "training_ticker_symbol" : ["all"],
    "training_sequence_length" : [60],
    "testing_ticker_symbol" : ["all"],
    "testing_sequence_length" : [1],
    "MarketTiming_Pdata_0" : [3, +0.1, -0.1, 0.0],
    "MarketTiming_Plower" : ["-Infinity", "-Infinity", "-Infinity", "-Infinity"],
    "MarketTiming_Pupper" : ["+Infinity", "+Infinity", "+Infinity", "+Infinity"],
    "MarketTiming_weight" : [],
    "PickStock_Pdata_0" : [3, 5],
    "PickStock_Plower" : ["-Infinity", "-Infinity"],
    "PickStock_Pupper" : ["+Infinity", "+Infinity"],
    "PickStock_weight" : [],
    "SizePosition_Pdata_0" : [1.0, "average"],
    "SizePosition_Plower" : [0.0, 0.0],
    "SizePosition_Pupper" : [1.0, 1.0],
    "SizePosition_weight" : [],
    "training_data_file" : ["C:/QuantitativeTrading/Data/trainingData.jld"],  // ["C:/QuantitativeTrading/Data/trainingData.pickle"],
    "testing_data_file" : ["C:/QuantitativeTrading/Data/testingData.jld"],  // ["C:/QuantitativeTrading/Data/testingData.pickle"],
    "stepping_data_file" : ["C:/QuantitativeTrading/Data/steppingData.jld"],  // ["C:/QuantitativeTrading/Data/steppingData.pickle"],
    "source_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ]
        }
    },
    "training_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "testing_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    },
    "stepping_data" : {
        "002611" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                7385675,
                33846475,
                27957054,
                25700917,
                56678844,
                39931296,
                21818792,
                15243953,
                46110961,
                29099424,
                58411670
            ],
            "turnover_amount": [
                27770014,
                135627968,
                109496376,
                103257416,
                242614176,
                170208784,
                90564944,
                62862520,
                197721472,
                125331136,
                260167456
            ],
            "opening_price": [
                3.75,
                3.76,
                3.84,
                3.99,
                4.04,
                4.24,
                4.12,
                4.13,
                4.14,
                4.27,
                4.32
            ],
            "close_price": [
                3.76,
                3.94,
                3.98,
                4.05,
                4.27,
                4.18,
                4.14,
                4.13,
                4.31,
                4.34,
                4.48
            ],
            "low_price": [
                3.73,
                3.72,
                3.8,
                3.92,
                3.98,
                4.16,
                4.11,
                4.09,
                4.12,
                4.24,
                4.29
            ],
            "high_price": [
                3.8,
                4.14,
                4.0,
                4.07,
                4.46,
                4.36,
                4.21,
                4.17,
                4.45,
                4.36,
                4.67
            ],
            "focus": [
                3.76,
                3.89,
                3.905,
                4.0075,
                4.1875,
                4.235,
                4.145,
                4.13,
                4.255,
                4.3025,
                4.44
            ],
            "amplitude": [
                0.029439203,
                0.192180471,
                0.099833194,
                0.06751543,
                0.220510771,
                0.09,
                0.045092498,
                0.032659863,
                0.155456318,
                0.056789083,
                0.174547033
            ],
            "amplitude_rate": [
                0.007829575,
                0.04940372,
                0.025565479,
                0.016847269,
                0.052659289,
                0.021251476,
                0.010878769,
                0.007907957,
                0.036534975,
                0.01319909,
                0.039312395
            ],
            "opening_price_Standardization": [
                -0.33968311,
                -0.676447505,
                -0.651086049,
                -0.259200007,
                -0.668901567,
                0.055555556,
                -0.554415953,
                0.0,
                -0.739757649,
                -0.572293089,
                -0.687493784
            ],
            "closing_price_Standardization": [
                0.0,
                0.260172117,
                0.751253134,
                0.629485731,
                0.374131385,
                -0.611111111,
                -0.110883191,
                0.0,
                0.353797136,
                0.66033818,
                0.229164595
            ],
            "low_price_Standardization": [
                -1.019049331,
                -0.884585199,
                -1.051754387,
                -1.296000034,
                -0.940997119,
                -0.833333333,
                -0.776182335,
                -1.224744871,
                -0.868411153,
                -1.100563633,
                -0.859367229
            ],
            "high_price_Standardization": [
                1.358732441,
                1.300860587,
                0.951587303,
                0.92571431,
                1.235767301,
                1.388888889,
                1.441481478,
                1.224744871,
                1.254371666,
                1.012518542,
                1.317696418
            ],
            "turnover_volume_growth_rate": [
                0.0,
                3.58271925,
                -0.174003969,
                -0.080700098,
                1.205323802,
                -0.295481467,
                -0.453591689,
                -0.30133836,
                2.024869009,
                -0.3689261,
                1.007313616
            ],
            "opening_price_growth_rate": [
                0.0,
                0.002666667,
                0.021276596,
                0.0390625,
                0.012531328,
                0.04950495,
                -0.028301887,
                0.002427184,
                0.002421308,
                0.031400966,
                0.011709602
            ],
            "closing_price_growth_rate": [
                0.0,
                0.04787234,
                0.010152284,
                0.01758794,
                0.054320988,
                -0.021077283,
                -0.009569378,
                -0.002415459,
                0.043583535,
                0.006960557,
                0.032258065
            ],
            "high_price_proportion": [
                0.989473684,
                0.951690821,
                0.995,
                0.995085995,
                0.957399103,
                0.972477064,
                0.983372922,
                0.990407674,
                0.968539326,
                0.995412844,
                0.959314775
            ],
            "low_price_proportion": [
                0.994666667,
                0.989361702,
                0.989583333,
                0.98245614,
                0.985148515,
                0.995215311,
                0.997572816,
                0.99031477,
                0.995169082,
                0.992974239,
                0.993055556
            ],
            "closing_minus_opening_price_growth_rate": [
                0.002666667,
                0.04787234,
                0.036458333,
                0.015037594,
                0.056930693,
                -0.014150943,
                0.004854369,
                0.0,
                0.041062802,
                0.016393443,
                0.037037037
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                1.791359625,
                0.808677828,
                -0.167702083,
                0.582486877,
                0.153590217,
                -0.601332423,
                -0.528134205,
                0.937099914,
                0.321754202,
                0.411425283
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.001333333,
                0.022609929,
                0.049700798,
                0.032062578,
                0.055770615,
                -0.001774706,
                -0.005861879,
                0.0036349,
                0.03261162,
                0.027410085
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                0.02393617,
                0.034088454,
                0.022664082,
                0.063114958,
                0.003041605,
                -0.02010802,
                -0.007200148,
                0.021187903,
                0.028752324,
                0.035738343
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                0.049205674,
                0.060394504,
                0.033266761,
                0.06444949,
                0.007157202,
                -0.001110551,
                0.001213592,
                0.020531401,
                0.036924844,
                0.045233758
            ],
            "sum_2_high_price_proportion": [
                null,
                1.446427663,
                1.470845411,
                1.492585995,
                1.454942101,
                1.451176616,
                1.469611454,
                1.482094135,
                1.463743163,
                1.479682507,
                1.457021197
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486695035,
                1.484264184,
                1.477247807,
                1.476376585,
                1.487789568,
                1.495180471,
                1.489101178,
                1.490326467,
                1.49055878,
                1.489542675
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                1.794033435,
                0.816153433,
                -0.162394081,
                0.595663278,
                0.154499026,
                -0.601279023,
                -0.52816919,
                0.938211686,
                0.326751665,
                0.417624603
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.73815851,
                0.266944754,
                0.327240342,
                0.052928734,
                -0.299794689,
                -0.702226642,
                0.440230023,
                0.137056078,
                1.039529723
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                0.015369582,
                0.054135786,
                0.045665194,
                0.070880003,
                0.015352978,
                0.006329915,
                -0.0004517,
                0.033824233,
                0.033450682
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.028044785,
                0.040313576,
                0.069430376,
                0.021025331,
                -0.009711602,
                -0.015820805,
                0.011327779,
                0.023742447,
                0.051426281
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.069262116,
                0.055300596,
                0.079108534,
                0.023927237,
                0.012742857,
                -0.000493578,
                0.02845395,
                0.029179096,
                0.061653599
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.959285109,
                1.975649602,
                1.952456433,
                1.942438465,
                1.950823999,
                1.970148643,
                1.956602082,
                1.971241619,
                1.94576978
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.980713357,
                1.971965597,
                1.969980386,
                1.979466368,
                1.989432528,
                1.987101751,
                1.987903201,
                1.986525217,
                1.986761409
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.74982791,
                0.287293521,
                0.362261072,
                0.061384027,
                -0.299515692,
                -0.702208303,
                0.441433708,
                0.143633821,
                1.059759237
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.987779617,
                0.424219288,
                -0.461007301,
                -0.589686585,
                0.527522535,
                -0.308230627,
                0.585057271
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.046091162,
                0.092011485,
                0.047942084,
                0.031435847,
                0.017940814,
                0.033492099,
                0.030271151
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.074905317,
                0.049900492,
                0.014422453,
                -0.003532006,
                0.012116149,
                0.011035464,
                0.037233955
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.110518038,
                0.060149741,
                0.03959144,
                0.016099861,
                0.032084862,
                0.030145221,
                0.060608277
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.929038965,
                2.923786108,
                2.932828433,
                2.94256909,
                2.931359864,
                2.952333491,
                2.9296063
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.959541441,
                2.966513481,
                2.975733296,
                2.976052843,
                2.981080415,
                2.981370555,
                2.980176867
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                1.103698843,
                0.498255593,
                -0.439458671,
                -0.585752412,
                0.535949828,
                -0.296415761,
                0.620777963
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                4.0,
                4.084,
                4.124,
                4.154,
                4.206,
                4.22,
                4.28
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                4.11,
                4.182
            ]
        },
        "600120" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                2235367,
                2492979,
                5789978,
                5837852,
                3128686,
                6507016,
                3468268,
                5220707,
                2908879,
                7862048,
                5862368
            ],
            "turnover_amount": [
                28299772,
                31614718,
                74879280,
                77869040,
                41722044,
                88585168,
                46164152,
                69468320,
                38810728,
                107137776,
                80643648
            ],
            "opening_price": [
                12.69,
                12.57,
                12.52,
                13.12,
                13.29,
                13.51,
                13.3,
                13.23,
                13.44,
                13.45,
                13.82
            ],
            "close_price": [
                12.56,
                12.55,
                13.09,
                13.31,
                13.3,
                13.35,
                13.26,
                13.35,
                13.28,
                13.75,
                13.62
            ],
            "low_price": [
                12.56,
                12.51,
                12.41,
                13.09,
                13.21,
                13.3,
                13.15,
                13.12,
                13.26,
                13.37,
                13.59
            ],
            "high_price": [
                12.77,
                12.9,
                13.18,
                13.58,
                13.43,
                13.8,
                13.49,
                13.5,
                13.47,
                13.79,
                13.94
            ],
            "focus": [
                12.645,
                12.6325,
                12.8,
                13.275,
                13.3075,
                13.49,
                13.3,
                13.3,
                13.3625,
                13.59,
                13.7425
            ],
            "amplitude": [
                0.103440804,
                0.180069431,
                0.391152144,
                0.225462488,
                0.091058589,
                0.225240612,
                0.141656862,
                0.163095064,
                0.107819293,
                0.211029224,
                0.166608323
            ],
            "amplitude_rate": [
                0.008180372,
                0.014254457,
                0.030558761,
                0.016983992,
                0.006842652,
                0.016696858,
                0.010650892,
                0.012262787,
                0.008068797,
                0.015528273,
                0.012123582
            ],
            "opening_price_Standardization": [
                0.43503142,
                -0.347088341,
                -0.71583399,
                -0.687475782,
                -0.192183957,
                0.088793934,
                0.0,
                -0.429197538,
                0.718795288,
                -0.663415225,
                0.465162835
            ],
            "closing_price_Standardization": [
                -0.821726016,
                -0.458156609,
                0.741399489,
                0.155236467,
                -0.082364553,
                -0.621557537,
                -0.282372483,
                0.30656967,
                -0.765169178,
                0.758188828,
                -0.735257385
            ],
            "low_price_Standardization": [
                -0.821726016,
                -0.680293147,
                -0.997054486,
                -0.820535611,
                -1.07073919,
                -0.843542371,
                -1.058896812,
                -1.103650811,
                -0.950664736,
                -1.042509639,
                -0.915320418
            ],
            "high_price_Standardization": [
                1.208420611,
                1.485538097,
                0.971488986,
                1.352774926,
                1.3452877,
                1.376305974,
                1.341269295,
                1.226278679,
                0.997038626,
                0.947736035,
                1.185414968
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.115243716,
                1.322513748,
                0.008268425,
                -0.464068976,
                1.079791964,
                -0.466995624,
                0.505277851,
                -0.442818952,
                1.70277588,
                -0.254345941
            ],
            "opening_price_growth_rate": [
                0.0,
                -0.009456265,
                -0.003977725,
                0.047923323,
                0.012957317,
                0.0165538,
                -0.015544041,
                -0.005263158,
                0.015873016,
                0.000744048,
                0.027509294
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.000796178,
                0.043027888,
                0.016806723,
                -0.000751315,
                0.003759398,
                -0.006741573,
                0.00678733,
                -0.005243446,
                0.035391566,
                -0.009454545
            ],
            "high_price_proportion": [
                0.993735317,
                0.974418605,
                0.993171472,
                0.98011782,
                0.990320179,
                0.978985507,
                0.985915493,
                0.988888889,
                0.997772829,
                0.997099347,
                0.991391679
            ],
            "low_price_proportion": [
                1.0,
                0.996812749,
                0.991214058,
                0.997713415,
                0.993980436,
                0.996254682,
                0.991704374,
                0.991685563,
                0.998493976,
                0.994052045,
                0.997797357
            ],
            "closing_minus_opening_price_growth_rate": [
                -0.010244287,
                -0.00159109,
                0.045527157,
                0.014481707,
                0.000752445,
                -0.011843079,
                -0.003007519,
                0.009070295,
                -0.011904762,
                0.022304833,
                -0.01447178
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.057621858,
                1.380135606,
                0.669525299,
                -0.229967382,
                0.423878738,
                0.036450179,
                0.135890019,
                -0.095090013,
                0.740683202,
                0.298520999
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                -0.004728132,
                -0.008705857,
                0.02296723,
                0.036918978,
                0.023032458,
                -0.003633571,
                -0.013035179,
                0.006620718,
                0.008680556,
                0.027881317
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.000398089,
                0.0213149,
                0.038320667,
                0.003826023,
                0.001691871,
                -0.002430937,
                0.001708272,
                -0.00092489,
                0.016384922,
                0.004120619
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.006713233,
                0.022365806,
                0.037245286,
                0.007993299,
                -0.005733428,
                -0.008929058,
                0.003783268,
                -0.003684807,
                0.008176226,
                -0.001659682
            ],
            "sum_2_high_price_proportion": [
                null,
                1.471286263,
                1.480380774,
                1.476703556,
                1.480379089,
                1.474145597,
                1.475408247,
                1.481846635,
                1.492217273,
                1.495985762,
                1.489941352
            ],
            "sum_2_low_price_proportion": [
                null,
                1.496812749,
                1.489620432,
                1.493320443,
                1.492837144,
                1.4932449,
                1.489831715,
                1.48753775,
                1.494336757,
                1.493299033,
                1.494823379
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.057697645,
                1.380757499,
                0.674559057,
                -0.229247625,
                0.423566698,
                0.036569207,
                0.135795559,
                -0.095136814,
                0.741141031,
                0.298402706
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.932895261,
                0.928358829,
                0.142877141,
                0.618572298,
                -0.174503086,
                0.473028865,
                -0.286705473,
                1.149063676,
                0.110426468
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.006854601,
                0.012105171,
                0.029495496,
                0.041166452,
                0.005055301,
                -0.008577924,
                -0.000502407,
                0.00696591,
                0.033296331
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                0.014165701,
                0.030239524,
                0.016780969,
                0.006074134,
                -0.003825919,
                0.003862181,
                -0.003485462,
                0.023937463,
                0.000396552
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.01219206,
                0.029711976,
                0.025582636,
                -0.000395116,
                -0.007184998,
                -0.000945039,
                -0.006589224,
                0.014240007,
                -0.007336727
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.974028981,
                1.967038336,
                1.974789216,
                1.9659049,
                1.968679224,
                1.972494387,
                1.985670585,
                1.991910863,
                1.98871552
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.989089224,
                1.990793703,
                1.989527399,
                1.991479444,
                1.987200974,
                1.984906706,
                1.990185809,
                1.99027655,
                1.993330045
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.933245261,
                0.933285682,
                0.14752846,
                0.618499221,
                -0.174537642,
                0.473046313,
                -0.28660163,
                1.15080829,
                0.109446544
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.41491849,
                1.235194773,
                0.38081141,
                0.469194392,
                -0.155042446,
                1.116719226,
                0.257670875
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.018050734,
                0.032011251,
                0.017576221,
                0.007740566,
                0.009636819,
                0.006301728,
                0.020491376
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.01527693,
                0.018328637,
                0.008124527,
                0.005165075,
                -0.002889742,
                0.021372952,
                0.004041918
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.022718346,
                0.011636587,
                0.004216956,
                0.003555824,
                -0.008105213,
                0.003241544,
                -0.004740891
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.958831823,
                2.951464652,
                2.953977428,
                2.957164223,
                2.970091474,
                2.978814242,
                2.980473508
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.985604702,
                2.985915252,
                2.982424559,
                2.979936729,
                2.984163011,
                2.983791249,
                2.987150478
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.421607074,
                1.240357188,
                0.38176623,
                0.469598784,
                -0.155527146,
                1.117516571,
                0.256635356
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                12.962,
                13.12,
                13.262,
                13.314,
                13.308,
                13.398,
                13.452
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                13.18,
                13.286
            ]
        },
        "002606" : {
            "date_transaction": [
                "2019-1-2",
                "2019-1-3",
                "2019-1-4",
                "2019-1-7",
                "2019-1-8",
                "2019-1-9",
                "2019-1-10",
                "2019-1-11",
                "2019-1-14",
                "2019-1-15",
                "2019-1-16"
            ],
            "turnover_volume": [
                30427451,
                38651476,
                34378806,
                42054728,
                33828580,
                52170400,
                72861506,
                61802215,
                64887208,
                58111385,
                50599633
            ],
            "turnover_amount": [
                204799888,
                245579392,
                215221488,
                268856160,
                214485664,
                340216064,
                514151200,
                442160992,
                491417760,
                443071328,
                377401248
            ],
            "opening_price": [
                6.62,
                6.68,
                6.06,
                6.36,
                6.54,
                6.25,
                6.69,
                6.87,
                7.2,
                7.56,
                7.6
            ],
            "close_price": [
                6.69,
                6.23,
                6.31,
                6.53,
                6.26,
                6.89,
                6.96,
                7.29,
                7.64,
                7.7,
                7.27
            ],
            "low_price": [
                6.57,
                6.17,
                5.91,
                6.19,
                6.19,
                6.22,
                6.67,
                6.73,
                7.15,
                7.34,
                7.22
            ],
            "high_price": [
                6.88,
                6.69,
                6.52,
                6.62,
                6.6,
                6.89,
                7.46,
                7.48,
                7.87,
                7.87,
                7.77
            ],
            "focus": [
                6.69,
                6.4425,
                6.2,
                6.425,
                6.3975,
                6.5625,
                6.945,
                7.0925,
                7.465,
                7.6175,
                7.465
            ],
            "amplitude": [
                0.135892114,
                0.281113856,
                0.269691181,
                0.190175358,
                0.202710796,
                0.378362701,
                0.367922093,
                0.35122405,
                0.34837719,
                0.224258036,
                0.264133804
            ],
            "amplitude_rate": [
                0.020312723,
                0.043634281,
                0.043498578,
                0.029599277,
                0.031685939,
                0.057655269,
                0.052976543,
                0.049520486,
                0.046668076,
                0.029439847,
                0.035382961
            ],
            "opening_price_Standardization": [
                -0.515114512,
                0.844853411,
                -0.519112265,
                -0.341789813,
                0.702971934,
                -0.825927078,
                -0.69308151,
                -0.633498759,
                -0.760669778,
                -0.256401068,
                0.511104591
            ],
            "closing_price_Standardization": [
                0.0,
                -0.755921473,
                0.407873922,
                0.552122006,
                -0.678306252,
                0.865571578,
                0.040769501,
                0.562319124,
                0.502329099,
                0.367879794,
                -0.738262186
            ],
            "low_price_Standardization": [
                -0.883053449,
                -0.969358124,
                -1.075303977,
                -1.235701633,
                -1.023625798,
                -0.905216078,
                -0.747440844,
                -1.03210472,
                -0.904192378,
                -1.237413852,
                -0.927560183
            ],
            "high_price_Standardization": [
                1.398167961,
                0.880426186,
                1.18654232,
                1.02536944,
                0.998960116,
                0.865571578,
                1.399752854,
                1.103284356,
                1.162533057,
                1.125935126,
                1.154717779
            ],
            "turnover_volume_growth_rate": [
                0.0,
                0.270283074,
                -0.110543515,
                0.223274828,
                -0.195605783,
                0.542198934,
                0.396606236,
                -0.1517851,
                0.049917191,
                -0.104424635,
                -0.129264722
            ],
            "opening_price_growth_rate": [
                0.0,
                0.009063444,
                -0.092814371,
                0.04950495,
                0.028301887,
                -0.044342508,
                0.0704,
                0.02690583,
                0.048034934,
                0.05,
                0.005291005
            ],
            "closing_price_growth_rate": [
                0.0,
                -0.068759342,
                0.012841091,
                0.034865293,
                -0.041347626,
                0.100638978,
                0.010159652,
                0.047413793,
                0.048010974,
                0.007853403,
                -0.055844156
            ],
            "high_price_proportion": [
                0.972383721,
                0.998505232,
                0.967791411,
                0.986404834,
                0.990909091,
                1.0,
                0.932975871,
                0.97459893,
                0.970775095,
                0.978398983,
                0.978120978
            ],
            "low_price_proportion": [
                0.99244713,
                0.990369181,
                0.975247525,
                0.97327044,
                0.988817891,
                0.9952,
                0.997010463,
                0.979621543,
                0.993055556,
                0.970899471,
                0.993122421
            ],
            "closing_minus_opening_price_growth_rate": [
                0.010574018,
                -0.067365269,
                0.041254125,
                0.02672956,
                -0.042813456,
                0.1024,
                0.040358744,
                0.061135371,
                0.061111111,
                0.018518519,
                -0.043421053
            ],
            "sum_2_turnover_volume_growth_rate": [
                null,
                0.135141537,
                0.012299011,
                0.084001535,
                -0.041984184,
                0.222198021,
                0.667705703,
                0.023259009,
                -0.012987679,
                -0.03973302,
                -0.181477039,
            ],
            "sum_2_opening_price_growth_rate": [
                null,
                0.004531722,
                -0.044141325,
                0.001548882,
                0.053054362,
                -0.015095782,
                0.024114373,
                0.06210583,
                0.061487849,
                0.074017467,
                0.030291005
            ],
            "sum_2_closing_price_growth_rate": [
                null,
                -0.034379671,
                -0.01076929,
                0.041285839,
                -0.01195749,
                0.039982582,
                0.06047914,
                0.052493619,
                0.07171787,
                0.03185889,
                -0.025958727
            ],
            "sum_2_closing_minus_opening_price_growth_rate": [
                null,
                -0.03103913,
                0.003785745,
                0.047356622,
                -0.014724338,
                0.040496636,
                0.091558744,
                0.081314743,
                0.091678797,
                0.049074074,
                -0.017080897
            ],
            "sum_2_high_price_proportion": [
                null,
                1.484697092,
                1.467044027,
                1.470300539,
                1.484111508,
                1.495454545,
                1.432975871,
                1.441086866,
                1.458074561,
                1.463786531,
                1.46732047
            ],
            "sum_2_low_price_proportion": [
                null,
                1.486592746,
                1.470432115,
                1.460894203,
                1.475453111,
                1.489608946,
                1.494610463,
                1.478126775,
                1.482866327,
                1.467427249,
                1.478572156
            ],
            "sum_2_KLine_Intuitive_Momentum": [
                null,
                0.137186352,
                0.01185058,
                0.088358676,
                -0.043309247,
                0.22444311,
                0.684294076,
                0.043108696,
                0.013416551,
                -0.028572474,
                -0.181637583
            ],
            "sum_3_turnover_volume_growth_rate": [
                null,
                null,
                0.023215067,
                0.184347565,
                -0.105352452,
                0.367614632,
                0.483647486,
                0.246163057,
                0.087682825,
                -0.092253736,
                -0.127041075
            ],
            "sum_3_opening_price_growth_rate": [
                null,
                null,
                -0.028924025,
                0.014391983,
                0.030557417,
                0.008798881,
                0.043368751,
                0.044299163,
                0.089438821,
                0.0909919,
                0.054635983
            ],
            "sum_3_closing_price_growth_rate": [
                null,
                null,
                -0.01099949,
                0.021310754,
                0.00456672,
                0.065652133,
                0.046907355,
                0.08773322,
                0.08300672,
                0.055665317,
                -0.004455212
            ],
            "sum_3_closing_minus_opening_price_growth_rate": [
                null,
                null,
                0.014882472,
                0.028669843,
                0.006776236,
                0.064692468,
                0.06765989,
                0.122174534,
                0.11532094,
                0.079637716,
                0.007337015
            ],
            "sum_3_high_price_proportion": [
                null,
                null,
                1.957589472,
                1.964434185,
                1.97110945,
                1.989407672,
                1.929945568,
                1.929916178,
                1.931499673,
                1.950448691,
                1.953978666
            ],
            "sum_3_low_price_proportion": [
                null,
                null,
                1.966309356,
                1.953558517,
                1.96274736,
                1.978835408,
                1.990083094,
                1.976028519,
                1.978473405,
                1.959477022,
                1.971407253
            ],
            "sum_3_KLine_Intuitive_Momentum": [
                null,
                null,
                0.020928008,
                0.18827574,
                -0.104431644,
                0.386575482,
                0.507107073,
                0.307679726,
                0.163677821,
                -0.047616537,
                -0.125622825
            ],
            "sum_5_turnover_volume_growth_rate": [
                null,
                null,
                null,
                null,
                0.00992048,
                0.357851454,
                0.49601632,
                0.320344624,
                0.238636609,
                0.106011343,
                -0.120402457
            ],
            "sum_5_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.03178101,
                -0.0000930013276550789,
                0.042695115,
                0.078236959,
                0.09042058,
                0.104411456,
                0.098954298
            ],
            "sum_5_closing_price_growth_rate": [
                null,
                null,
                null,
                null,
                -0.01330179,
                0.057284766,
                0.08078642,
                0.095010558,
                0.104180807,
                0.098902114,
                0.033700572
            ],
            "sum_5_closing_minus_opening_price_growth_rate": [
                null,
                null,
                null,
                null,
                0.001046731,
                0.061874104,
                0.1078395,
                0.124741546,
                0.138443186,
                0.140712128,
                0.058521693
            ],
            "sum_5_high_price_proportion": [
                null,
                null,
                null,
                null,
                2.954586641,
                2.971387784,
                2.915641542,
                2.914624231,
                2.908421581,
                2.912968767,
                2.919739969
            ],
            "sum_5_low_price_proportion": [
                null,
                null,
                null,
                null,
                2.947219857,
                2.958389423,
                2.970818879,
                2.964531158,
                2.970802646,
                2.950961026,
                2.956926041
            ],
            "sum_5_KLine_Intuitive_Momentum": [
                null,
                null,
                null,
                null,
                0.010088913,
                0.38895838,
                0.61135904,
                0.507075756,
                0.471418224,
                0.351933239,
                -0.053379326
            ],
            "average_5_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                6.404,
                6.444,
                6.59,
                6.786,
                7.008,
                7.296,
                7.372
            ],
            "average_10_closing_price": [
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                6.85,
                6.908
            ]
        }
    }
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

---

開箱即用 ( out of the box ) ( portable application ) 已配置第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 和 Python 解釋器 ( Interpreter ) 運行環境的壓縮檔 ( .7z ) 的 [百度網盤(pan.baidu.com)](https://pan.baidu.com/s/16jdb-nX45cR5uZZKMItsjQ?pwd=kgbh) 下載頁: 
https://pan.baidu.com/s/16jdb-nX45cR5uZZKMItsjQ?pwd=kgbh

提取碼：kgbh

開箱即用 ( out of the box ) ( portable application ) 檔 :

1. 壓縮檔 : `Julia-1.10.10-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`Julia-1.10.10-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 程式設計語言 ( Julia ) 解釋器 ( Interpreter ) 二進位可執行檔 ( julia-1.10.10-win64.exe ) 開箱即用 ( out of the box ) ( portable application ) 免安裝版，需自行下載解壓縮，將其保存至檔案夾 ( folder ) : `QuantitativeTrading/Julia/` 内，最終完整路徑應爲「`QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe`」

2. 壓縮檔 : `Python-3.11.2-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`Python-3.11.2-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 程式設計語言 ( Python ) 解釋器 ( Interpreter ) 二進位可執行檔 ( python-3.11.2-amd64.exe ) 開箱即用 ( out of the box ) ( portable application ) 免安裝版，需自行下載解壓縮，將其保存至檔案夾 ( folder ) : `QuantitativeTrading/Python/` 内，最終完整路徑應爲「`QuantitativeTrading/Python/Python311/python.exe`」

3. 壓縮檔 : `QuantitativeTradingJulia-Julia1.10.10-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`QuantitativeTradingJulia-Julia1.10.10-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 數量化交易模型 'QuantitativeTradingJulia' 開箱即用 ( out of the box ) ( portable application ) 版，已配置計算機程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 運行此數量化交易模型 'QuantitativeTradingJulia' 項目所需的第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的運行環境，可自行下載解壓縮，將其保存至檔案夾 ( folder ) : `QuantitativeTrading/QuantitativeTradingJulia/` 内，再因應協調配置壓縮檔「`Julia-1.10.10-Window10-AMD_FX8800P_x86_64.7z`」之後，即可使用如下指令啓動運行數量化交易模型「`QuantitativeTradingJulia`」項目 : 
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe -p 4 --project=C:/QuantitativeTrading/QuantitativeTradingJulia/ C:/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0 input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_JLD=true output_jld_K_Line=C:/QuantitativeTrading/Data/steppingData.jld is_save_csv=false output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=false output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/ Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld
```

4. 壓縮檔 : `QuantitativeTradingPython-Python3.11.2-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`QuantitativeTradingPython-Python3.11.2-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 數量化交易模型 'QuantitativeTradingPython' 開箱即用 ( out of the box ) ( portable application ) 版，已配置計算機程式設計語言 ( computer programming language ) : Python 解釋器 ( Interpreter ) 運行此數量化交易模型 'QuantitativeTradingPython' 項目所需的第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的運行環境，可自行下載解壓縮，將其保存至檔案夾 ( folder ) : `QuantitativeTrading/QuantitativeTradingPython/` 内，再因應協調配置壓縮檔「`Python-3.11.2-Window10-AMD_FX8800P_x86_64.7z`」之後，即可使用如下指令啓動運行數量化交易模型「'QuantitativeTradingPython`」項目 : 
```
C:\QuantitativeTrading> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/python.exe C:/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0 input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_pickle=True output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle is_save_csv=False output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=False output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/ Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle
```
或者 : 
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Python/Python311/python.exe C:/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0 input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_pickle=True output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle is_save_csv=False output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=False output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/ Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle
```

5. 壓縮檔 : `QuantitativeTrading-Window10-AMD_FX8800P_x86_64.7z`

壓縮檔「`QuantitativeTrading-Window10-AMD_FX8800P_x86_64.7z`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 數量化交易模型 'QuantitativeTrading' 開箱即用 ( out of the box ) ( portable application ) 版，已配置計算機程式設計語言 ( computer programming language ) : Julia 解釋器 ( Interpreter ) 和 Python 解釋器 ( Interpreter ) 運行此數量化交易模型 'QuantitativeTrading' 項目所需的第三方擴展模組 ( third-party extensions ( libraries or modules ) ) 的運行環境，可自行下載解壓縮，將其保存至根目錄 ( Root Directory ) : `C:` 内，即可使用如下指令啓動運行數量化交易模型「'QuantitativeTrading'」項目 : 

程式設計語言 ( computer programming language ) : Julia 實現，使用如下指令:
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Julia/Julia-1.10.10/bin/julia.exe -p 4 --project=C:/QuantitativeTrading/QuantitativeTradingJulia/ C:/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configFile=C:/QuantitativeTrading/QuantitativeTradingJulia/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0 input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_JLD=true output_jld_K_Line=C:/QuantitativeTrading/Data/steppingData.jld is_save_csv=false output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=false output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/ Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld
```
程式設計語言 ( computer programming language ) : Python 實現，使用如下指令:
```
C:\QuantitativeTrading> C:/QuantitativeTrading/QuantitativeTradingPython/Scripts/python.exe C:/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0 input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_pickle=True output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle is_save_csv=False output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=False output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/ Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle
```
或者 : 
```
C:\QuantitativeTrading> C:/QuantitativeTrading/Python/Python311/python.exe C:/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=C:/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0 input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/ is_save_pickle=True output_pickle_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle is_save_csv=False output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/ is_save_xlsx=False output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/ Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.pickle
```
使用批處理脚本「`startServer.bat`」啓動，使用如下指令 : 
```
C:\QuantitativeTrading> C:/Windows/System32/cmd.exe C:/QuantitativeTrading/startServer.bat C:/QuantitativeTrading/config.txt
```
使用二進位可執行檔「`QuantitativeTrading.exe`」啓動，使用如下指令 : 
```
C:\QuantitativeTrading> C:/QuantitativeTrading/QuantitativeTrading.exe configFile=C:/QuantitativeTrading/config.txt executableFile=C:/QuantitativeTrading/Julia/Julia-1.10.10/julia.exe interpreterFile=-p,4,--project=C:/QuantitativeTrading/QuantitativeTradingJulia/ scriptFile=C:/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=C:/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks,input_K_Line=C:/QuantitativeTrading/Data/K-Day-source/,is_save_JLD=true,output_jld_K_Line=C:/QuantitativeTrading/Data/steppingData.jld,is_save_csv=false,output_csv_K_Line=C:/QuantitativeTrading/Data/K-Day/,is_save_xlsx=false,output_xlsx_K_Line=C:/QuantitativeTrading/Data/K-Day/,Cleaned_K_Line=C:/QuantitativeTrading/Data/steppingData.jld
```

6. 壓縮檔 : `google-pixel-2_android-11_termux-0.118_arm64_ubuntu-22.04_arm64_QuantitativeTrading.tar.gz`

壓縮檔「`google-pixel-2_android-11_termux-0.118_arm64_ubuntu-22.04_arm64_QuantitativeTrading.tar.gz`」爲谷歌安卓作業系統 ( Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280 ) 數量化交易運算伺服器「'QuantitativeTrading'」項目源代碼脚本，可自行下載將其移動至 Android-Termux-Ubuntu 系統的檔案夾 ( folder ) : `/home/` 内，然後再使用如下指令解壓縮 : 
```
root@localhost:~# tar -zxvf /home/google-pixel-2_android-11_termux-0.118_arm64_ubuntu-22.04_arm64_QuantitativeTrading.tar.gz
```
最終應保存爲檔案夾 ( folder ) : `/home/QuantitativeTrading/` 形式.

然後，再使用如下指令修改批處理 ( Bash ) 脚本「`startServer.sh`」和二進位可執行檔「`QuantitativeTrading.exe`」的權限爲所有用戶可運行 :
```
root@localhost:~# chmod 777 /home/QuantitativeTrading/startServer.sh
```
```
root@localhost:~# chmod 777 /home/QuantitativeTrading/QuantitativeTrading.exe
```
使用如下指令修改參數配置文檔「`/home/QuantitativeTrading/config.txt`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt`」「`/home/QuantitativeTrading/QuantitativeTradingPython/config.txt`」和代碼脚本檔 ( Script file ) 「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Interface.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Router.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Interpolation_Fitting.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.jl`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.jl`」「`/home/QuantitativeTrading/QuantitativeTradingPython/src/Interface.py`」「`/home/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py`」「`/home/QuantitativeTrading/QuantitativeTradingPython/src/Router.py`」「`/home/QuantitativeTrading/QuantitativeTradingPython/src/Interpolation_Fitting.py`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.py`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.py`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.py`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.py`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.py`」「`/home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.py`」的權限爲所有用戶可讀可寫 :
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/config.txt
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/config.txt
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingPython/config.txt
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Interface.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Router.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Interpolation_Fitting.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.jl
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingPython/src/Interface.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingPython/src/Router.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingPython/src/Interpolation_Fitting.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Indicators.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_Data_Cleaning.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_MarketTiming.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_PickStock.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_SizePosition.py
```
```
root@localhost:~# chmod 666 /home/QuantitativeTrading/QuantitativeTradingJulia/src/Quantitative_BackTesting.py
```
然後，即可使用如下指令啓動運行數量化交易運算伺服器「'QuantitativeTrading'」項目 : 

程式設計語言 ( computer programming language ) : Julia 實現，使用如下指令:
```
root@localhost:~# /usr/julia/julia-1.10.10/bin/julia -p 4 --project=/home/QuantitativeTrading/QuantitativeTradingJulia/ /home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt interface_Function=http_Server webPath=/home/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```
程式設計語言 ( computer programming language ) : Python 實現，使用如下指令:
```
root@localhost:~# /usr/bin/python3 /home/QuantitativeTrading/QuantitativeTradingPython/src/QuantitativeTradingServer.py configFile=/home/QuantitativeTrading/QuantitativeTradingPython/config.txt interface_Function=http_Server webPath=/home/QuantitativeTrading/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```
使用 Shell 語言脚本「`startServer.sh`」啓動，使用如下指令 : 
```
root@localhost:~# /bin/bash /home/QuantitativeTrading/startServer.sh configFile=/home/QuantitativeTrading/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/ scriptFile=/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=/home/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```
使用二進位可執行檔「`QuantitativeTrading.exe`」啓動，使用如下指令 : 
```
root@localhost:~# /home/QuantitativeTrading/QuantitativeTrading.exe configFile=/home/QuantitativeTrading/config.txt executableFile=/bin/julia interpreterFile=-p,4,--project=/home/QuantitativeTrading/QuantitativeTradingJulia/ scriptFile=/home/QuantitativeTrading/QuantitativeTradingJulia/src/QuantitativeTradingServer.jl configInstructions=configFile=/home/QuantitativeTrading/QuantitativeTradingJulia/config.txt,interface_Function=http_Server,webPath=/home/QuantitativeTrading/html/,host=::0,port=10001,key=username:password,number_Worker_threads=1,isConcurrencyHierarchy=Tasks
```

7. 二進位可執行檔 : `QuantitativeTrading-Window10-AMD_FX8800P_x86_64.exe`

二進位可執行檔「`QuantitativeTrading-Window10-AMD_FX8800P_x86_64.exe`」爲微軟視窗作業系統 ( Operating System: Acer-NEO-2023 Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30 ) 數量化交易運算伺服器「'QuantitativeTrading'」項目内 C 語言源代碼檔「'QuantitativeTrading/c/c2exe.c'」使用 Window10 - MinGW-w64 - gcc 編譯器，編譯之後得到的二進位可執行檔，可自行下載保存至檔案夾 ( folder ) : `C:/QuantitativeTrading/` 内，使用如下指令將其重命名 :
```
C:\QuantitativeTrading> rename C:/QuantitativeTrading/QuantitativeTrading-Window10-AMD_FX8800P_x86_64.exe C:/QuantitativeTrading/QuantitativeTrading.exe
```
8. 二進位可執行檔 : `QuantitativeTrading_google-pixel-2_android-11_termux-0.118_ubuntu-22.04-LTS-rootfs_arm64.exe`

二進位可執行檔「`QuantitativeTrading_google-pixel-2_android-11_termux-0.118_ubuntu-22.04-LTS-rootfs_arm64.exe`」爲谷歌安卓作業系統 ( Operating System: Google-Pixel-7 Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280 ) 數量化交易運算伺服器「'QuantitativeTrading'」項目内 C 語言源代碼檔「'QuantitativeTrading/c/c2exe.c'」使用 Ubuntu 22.04 - gcc 編譯器，編譯之後得到的二進位可執行檔，可自行下載保存至檔案夾 ( folder ) : `/home/QuantitativeTrading/` 内，使用如下指令將其重命名 :
```
root@localhost:~# /home/QuantitativeTrading/QuantitativeTrading_google-pixel-2_android-11_termux-0.118_ubuntu-22.04-LTS-rootfs_arm64.exe /home/QuantitativeTrading/QuantitativeTrading.exe
```
再使用如下指令修改其權限爲所有用戶可運行 :
```
root@localhost:~# chmod 777 /home/QuantitativeTrading/QuantitativeTrading.exe
```
即可 .
