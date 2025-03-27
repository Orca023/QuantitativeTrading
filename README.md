## 數量化交易模型 QuantitativeTrading : QuantitativeTradingJulia , QuantitativeTradingPython
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

1. 檔案夾 ( folder )「`QuantitativeTrading/Data/K-Day/`」爲日棒缐 ( K - Line ) 原始數據逗號 ( , ) 分隔符檔 ( .csv ) 的保存位置，如此例通過深圳市招商證券股份有限公司 ( CHINA MERCHANTS SECURITIES CO., LTD. ) 證券交易服務用戶端 ( zyyht.exe ) 下載得到中華人民共和國人民幣認購和交易的普通股票 ( A shares ) 數據逗號 ( , ) 分隔符檔 ( .csv ) 示例 .

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

標準化日棒缐 ( K - Line ) 數據以程式設計語言 ( computer programming language ) : Python 字典類型 ( Python - dict ) 數據，數據格式可類比如下 :

training_data = 
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




谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/bin/python3 /home/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=/home/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=/home/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\StatisticalServer> C:/StatisticalServer/Python/Python311/python.exe C:/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py configFile=C:/StatisticalServer/StatisticalServerPython/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 Key=username:password Is_multi_thread=False number_Worker_process=0
```

控制臺啓動傳參釋意, 各參數之間以一個空格字符 ( `SPACE` ) ( `00100000` ) 分隔, 鍵(Key) ~ 值(Value) 之間以一個等號字符 ( `=` ) 連接, 即類比 `Key=Value` 的形式 :

1. (必), (自定義), 安裝配置的程式設計語言 ( Python ) 解釋器 ( Interpreter ) 環境的二進制可執行檔啓動存儲路徑全名, 預設值爲 :  `C:/StatisticalServer/Python/Python311/python.exe`

2. (必), (自定義), 語言 ( Python ) 程式代碼脚本 ( Script ) 檔 ( `StatisticalAlgorithmServer.py` ) 的存儲路徑全名, 預設值爲 :  `C:/StatisticalServer/StatisticalServerPython/StatisticalAlgorithmServer.py`

   注意, 因爲「`StatisticalAlgorithmServer.py`」檔中脚本代碼需要加載引入「`Interface.py`」檔, 所以需要保持「`StatisticalAlgorithmServer.py`」檔與「`Interface.py`」檔在相同目錄下, 不然就需要手動修改「`StatisticalAlgorithmServer.py`」檔中有關引用「`Interface.py`」檔的加載路徑代碼, 以確保能正確引入「`Interface.py`」檔.

3. (選), (鍵 `configFile` 固定, 值 `C:/StatisticalServer/StatisticalServerPython/config.txt` 自定義), 用於傳入配置文檔的保存路徑全名, 預設值爲 :  `configFile=C:/StatisticalServer/StatisticalServerPython/config.txt`

4. (選), (鍵 `interface_Function` 固定, 值 `file_Monitor` 自定義, [ `file_Monitor`, `http_Server`, `http_Client` ] 取其一), 用於傳入選擇啓動哪一種接口服務, 外設硬盤 ( Hard Disk ) 文檔 ( File ) 作橋, 外設網卡 ( Network Interface Card ) 埠 ( Port ) 作橋, 預設值爲 :  `interface_Function=file_Monitor`

以下是當參數 : `interface_Function` 取 : `http_Server` 值時, 可在控制臺命令列傳入的參數 :

14. (選), (鍵 `host` 固定, 值 `::0` 自定義, 例如 [ `::0`, `::1`, `0.0.0.0`, `127.0.0.1` ] 取其一), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::0`

15. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入伺服器 ( `http_Server` ) 監聽的外設網卡 ( Network Interface Card ) 自定義設定的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

16. (選), (鍵 `Key` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入自定義的訪問網站驗證 ( `Authorization` ) 用戶名和密碼, 預設值爲 :  `Key=username:password`

17. (選), (鍵 `Is_multi_thread` 固定, 值 `False` 自定義, 例如 [ `True`, `False` ] 取其一), 用於判斷是否開啓多缐程 ( Threading ) 並發, 預設值爲 :  `Is_multi_thread=False`

18. (選), (鍵 `number_Worker_process` 固定, 值 `0` 自定義), 用於傳入創建並發數目, 子進程 ( Sub Process ) 並發, 或者, 子缐程 ( Sub Threading ) 並發, 即, 可以設爲等於物理中央處理器 ( Central Processing Unit ) 的數目, 取 0 值表示不開啓並發架構, 預設值爲 :  `number_Worker_process=0`

19. (選), (鍵 `webPath` 固定, 值 `C:/StatisticalServer/html/` 自定義), 用於傳入伺服器 ( `http_Server` ) 啓動運行的自定義的根目錄 (項目空間) 路徑全名, 預設值爲 :  `webPath=C:/StatisticalServer/html/`

以下是當參數 : `interface_Function` 取 : `http_Client` 值時, 可在控制臺命令列傳入的參數 :

14. (選), (鍵 `host` 固定, 值 `::1` 自定義, 例如 [ `::1`, `127.0.0.1`, `localhost` ] 取其一), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的地址 ( IPv6 , IPv4 ) 或域名, 預設值爲 :  `host=::1`

15. (選), (鍵 `port` 固定, 值 `10001` 自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的埠號 ( `1 ~ 65535` ), 預設值爲 :  `port=10001`

20. (選), (鍵 `URL` 固定, 值 `/` 自定義, 例如配置爲 `http://[::1]:10001/index.html` 值), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的地址, 萬維網統一資源定位系統 ( Uniform Resource Locator ) 地址字符串, 預設值爲 :  `URL=/`

21. (選), (鍵 `Method` 固定, 值 `POST` 自定義, 例如 [ `POST`, `GET` ] 取其一), 用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的類型, 預設值爲 :  `Method=POST`

22. (選), (鍵 `time_out` 固定, 值 `0.5` 自定義), 用於傳入設置鏈接超時自動中斷的時長，單位 ( Unit ) 爲秒 ( Second ), 預設值爲 :  `time_out=0.5`

23. (選), (鍵 `request_Auth` 固定, 賬號密碼連接符 `:` 固定, 值 `username` 和 `password` 自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的驗證 ( Authorization ) 的賬號密碼字符串, 預設值爲 :  `request_Auth=username:password`

24. (選), (鍵 `request_Cookie` 固定, 其中 `Cookie` 名稱 `Session_ID` 可以設計爲固定, `Cookie` 值 `request_Key->username:password` 可以設計爲自定義), 用於傳入用戶端連接器 ( `http_Client` ) 向外設網卡 ( Network Interface Card ) 發送請求的 `Cookies` 值字符串, 預設值爲 :  `request_Cookie=Session_ID=request_Key->username:password`

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

標準化日棒缐 ( K - Line ) 數據以程式設計語言 ( computer programming language ) : Julia 字典類型 ( Julia - Base.Dict ) 數據傳入，數據格式可類比如下 :

谷歌安卓系統 之 Termux 系統 之 烏班圖系統 ( Android-11 Termux-0.118 Ubuntu-22.04-LTS-rootfs Arm64-aarch64 )

控制臺命令列 ( bash ) 運行啓動指令 :
```
root@localhost:~# /usr/julia/julia-1.10.4/bin/julia -p 4 --project=/home/StatisticalServer/StatisticalServerJulia/ /home/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configFile=/home/StatisticalServer/StatisticalServerJulia/config.txt interface_Function=http_Server webPath=/home/StatisticalServer/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
```

微軟視窗系統 ( Window10 x86_64 )

控制臺命令列 ( cmd ) 運行啓動指令 :
```
C:\StatisticalServer> C:/StatisticalServer/Julia/Julia-1.9.3/bin/julia.exe -p 4 --project=C:/StatisticalServer/StatisticalServerJulia/ C:/StatisticalServer/StatisticalServerJulia/StatisticalAlgorithmServer.jl configFile=C:/StatisticalServer/StatisticalServerJulia/config.txt interface_Function=http_Server webPath=C:/StatisticalServer/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks readtimeout=0 connecttimeout=0
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
