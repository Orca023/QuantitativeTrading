# module Quantitative_MarketTiming
# Main.Quantitative_MarketTiming
Base.push!(LOAD_PATH, ".")  # 增加當前目錄為導入擴展包時候的搜索路徑之一，用於導入當前目錄下自定義的模組（Julia代碼文檔 .jl）;
# Base.MainInclude.include(Base.filter(Base.contains(r".*\.jl$"), Base.Filesystem.readdir()));  # 在 Jupyterlab 中實現加載 Base.MainInclude.include("*.jl") 文檔，其中 r".*\.jl$" 為解析脚本文檔名的正則表達式;
# Base.MainInclude.include(popfirst!(ARGS));
# println(Base.PROGRAM_FILE)


#################################################################################;

# Title: Julia statistical algorithm server v20161211
# Explain: Julia market timing, Julia pick stock, Julia size position, Julia back testing, Julia indicators, Julia data cleaning
# Author: 趙健
# E-mail: 283640621@qq.com
# Telephont number: +86 18604537694
# E-mail: chinaorcaz@gmail.com
# Date: 歲在壬寅
# Operating system: Windows10 x86_64 Inter(R)-Core(TM)-m3-6Y30
# Interpreter: julia-1.9.3-win64.exe
# Interpreter: julia-1.10.3-linux-x86_64.tar.gz
# Operating system: google-pixel-2 android-11 termux-0.118 ubuntu-22.04-LTS-rootfs arm64-aarch64 MSM8998-Snapdragon835-Qualcomm®-Kryo™-280
# Interpreter: julia-1.10.3-linux-aarch64.tar.gz

# 使用説明：
# 使用 Base.MainInclude.include() 函數可導入本地 Julia 脚本文檔到當前位置執行;
# Base.MainInclude.include("/home/QuantitativeTrading/QuantitativeTradingJulia/Quantitative_MarketTiming.jl");
# Base.MainInclude.include("C:/QuantitativeTrading/QuantitativeTradingJulia/Quantitative_MarketTiming.jl");
# Base.MainInclude.include("./Quantitative_MarketTiming.jl");

# 控制臺命令列運行指令：
# C:\> C:/QuantitativeTrading/Julia/Julia-1.9.3/bin/julia.exe -p 4 --project=C:/QuantitativeTrading/QuantitativeTradingJulia/ C:/QuantitativeTrading/QuantitativeTradingJulia/QuantitativeTradingServer.jl configFile=C:/QuantitativeTrading/config.txt webPath=C:/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks is_monitor=false time_sleep=0.02 monitor_dir=C:/QuantitativeTrading/Intermediary/ monitor_file=C:/QuantitativeTrading/Intermediary/intermediary_write_C.txt output_dir=C:/QuantitativeTrading/Intermediary/ output_file=C:/QuantitativeTrading/Intermediary/intermediary_write_Julia.txt temp_cache_IO_data_dir=C:/QuantitativeTrading/temp/
# root@localhost:~# /usr/julia/julia-1.10.3/bin/julia -p 4 --project=/home/QuantitativeTrading/QuantitativeTradingJulia/ /home/QuantitativeTrading/QuantitativeTradingJulia/QuantitativeTradingServer.jl configFile=/home/QuantitativeTrading/config.txt webPath=/home/QuantitativeTrading/html/ host=::0 port=10001 key=username:password number_Worker_threads=1 isConcurrencyHierarchy=Tasks is_monitor=false time_sleep=0.02 monitor_dir=/home/QuantitativeTrading/Intermediary/ monitor_file=/home/QuantitativeTrading/Intermediary/intermediary_write_C.txt output_dir=/home/QuantitativeTrading/Intermediary/ output_file=/home/QuantitativeTrading/Intermediary/intermediary_write_Julia.txt temp_cache_IO_data_dir=/home/QuantitativeTrading/temp/

#################################################################################;


using Statistics;  # 導入 Julia 的原生標準模組「Statistics」，用於數據統計計算;
using Dates;  # 導入 Julia 的原生標準模組「Dates」，用於處理時間和日期數據，也可以用全名 Main.Dates. 訪問模組内的方法（函數）;
using Distributed;  # 導入 Julia 的原生標準模組「Distributed」，用於提供并行化和分佈式功能;
# using Sockets;  # 導入 Julia 的原生標準模組「Sockets」，用於創建 TCP server 服務器;
# using Base64;  # 導入 Julia 的原生標準模組「Base64」，用於按照 Base64 方式編解碼字符串;
# using SharedArrays;

# Distributed.@everywhere using Dates, Distributed, Sockets, Base64;  # SharedArrays;  # 使用廣播關鍵字 Distributed.@everywhere 在所有子進程中加載指定模組或函數或變量;

# https://discourse.juliacn.com/t/topic/2969
# 如果想臨時更換pkg工具下載鏡像源，在julia解釋器環境命令行輸入命令：
# julia> ENV["JULIA_PKG_SERVER"]="https://mirrors.bfsu.edu.cn/julia/static"
# 或者：
# Windows Powershell: $env:JULIA_PKG_SERVER = 'https://pkg.julialang.org'
# Linux/macOS Bash: export JULIA_PKG_SERVER="https://pkg.julialang.org"
using Gadfly;  # 導入第三方擴展包「Gadfly」，用於繪圖，需要在控制臺先安裝第三方擴展包「Gadfly」：julia> using Pkg; Pkg.add("Gadfly") 成功之後才能使用;
using Cairo;  # 導入第三方擴展包「Cairo」，用於持久化保存圖片到硬盤文檔，需要在控制臺先安裝第三方擴展包「Cairo」：julia> using Pkg; Pkg.add("Cairo") 成功之後才能使用;
using Fontconfig;  # 導入第三方擴展包「Fontconfig」，用於持久化保存圖片到硬盤文檔，需要在控制臺先安裝第三方擴展包「Fontconfig」：julia> using Pkg; Pkg.add("Fontconfig") 成功之後才能使用;
# using Plots;  # 導入第三方擴展包「Plots」，用於繪圖，需要在控制臺先安裝第三方擴展包「Plots」：julia> using Pkg; Pkg.add("Plots") 成功之後才能使用;
# using DataFrames;  # 導入第三方擴展包「DataFrames」，需要在控制臺先安裝第三方擴展包「DataFrames」：julia> using Pkg; Pkg.add("DataFrames") 成功之後才能使用;
# # https://github.com/JuliaData/DataFrames.jl
# # https://dataframes.juliadata.org/stable/
# using JLD;  # 導入第三方擴展包「JLD」，用於操作 Julia 語言專有的硬盤「.jld」文檔數據，需要在控制臺先安裝第三方擴展包「JLD」：julia> using Pkg; Pkg.add("JLD") 成功之後才能使用;
# https://github.com/JuliaIO/JLD.jl
# using HDF5;
# # https://github.com/JuliaIO/HDF5.jl
# using JSON;  # 導入第三方擴展包「JSON」，用於轉換JSON字符串為字典 Base.Dict 對象，需要在控制臺先安裝第三方擴展包「JSON」：julia> using Pkg; Pkg.add("JSON") 成功之後才能使用;
# # https://github.com/JuliaIO/JSON.jl
# using CSV;  # 導入第三方擴展包「CSV」，用於操作「.csv」文檔，需要在控制臺先安裝第三方擴展包「CSV」：julia> using Pkg; Pkg.add("CSV") 成功之後才能使用;
# # https://github.com/JuliaData/CSV.jl
# # https://csv.juliadata.org/stable/
# using XLSX;  # 導入第三方擴展包「XLSX」，用於操作「.xlsx」文檔（Microsoft Office Excel），需要在控制臺先安裝第三方擴展包「XLSX」：julia> using Pkg; Pkg.add("XLSX") 成功之後才能使用;
# # https://github.com/felipenoris/XLSX.jl
# # https://felipenoris.github.io/XLSX.jl/stable/
using Optim;  # 導入第三方擴展包「Optim」，用於通用形式優化問題求解（optimization），需要在控制臺先安裝第三方擴展包「Optim」：julia> using Pkg; Pkg.add("Optim") 成功之後才能使用;
# https://julianlsolvers.github.io/Optim.jl/stable/
# https://github.com/JuliaNLSolvers/Optim.jl
# using JuMP;  # 導入第三方擴展包「JuMP」，用於帶有約束條件的通用形式優化問題求解（optimization），需要在控制臺先安裝第三方擴展包「JuMP」：julia> using Pkg; Pkg.add("JuMP") 成功之後才能使用;
# using Gurobi;  # 導入第三方擴展包「Gurobi」，用於 JuMP 調用的求解器（underlying solver）做缐性、整數、二次、混合整數等問題優化，需要在控制臺先安裝第三方擴展包「Gurobi」：julia> using Pkg; Pkg.add("Gurobi") 成功之後才能使用;
# using Ipopt;  # 導入第三方擴展包「Ipopt」，用於 JuMP 調用的求解器（underlying solver）做非缐性問題優化，需要在控制臺先安裝第三方擴展包「Ipopt」：julia> using Pkg; Pkg.add("Ipopt") 成功之後才能使用;
# using Cbc;  # 導入第三方擴展包「Cbc」，用於 JuMP 調用的求解器（underlying solver）做整數、混合整數問題優化，需要在控制臺先安裝第三方擴展包「Cbc」：julia> using Pkg; Pkg.add("Cbc") 成功之後才能使用;
# using GLPK;  # 導入第三方擴展包「GLPK」，用於 JuMP 調用的求解器（underlying solver）做缐性問題優化，需要在控制臺先安裝第三方擴展包「GLPK」：julia> using Pkg; Pkg.add("GLPK") 成功之後才能使用;
# # https://jump.dev/
# # https://jump.dev/JuMP.jl/stable/
# # https://github.com/jump-dev/JuMP.jl
# using LsqFit;  # 導入第三方擴展包「LsqFit」，用於任意形式曲缐方程擬合（Curve Fitting），需要在控制臺先安裝第三方擴展包「LsqFit」：julia> using Pkg; Pkg.add("LsqFit") 成功之後才能使用;
# # https://julianlsolvers.github.io/LsqFit.jl/latest/
# # https://github.com/JuliaNLSolvers/LsqFit.jl
# using Interpolations;  # 導入第三方擴展包「Interpolations」，用於插值運算（Interpolation），需要在控制臺先安裝第三方擴展包「Interpolations」：julia> using Pkg; Pkg.add("Interpolations") 成功之後才能使用;
# # https://juliamath.github.io/Interpolations.jl/stable/
# # https://github.com/JuliaMath/Interpolations.jl/
# using DataInterpolations;  # 導入第三方擴展包「DataInterpolations」，用於一維（1 Dimension）插值運算（Interpolation），需要在控制臺先安裝第三方擴展包「DataInterpolations」：julia> using Pkg; Pkg.add("DataInterpolations") 成功之後才能使用;
# # https://github.com/SciML/DataInterpolations.jl
# using NLsolve;  # 導入第三方擴展包「NLsolve」，用於求解任意形式多元非缐性方程組，需要在控制臺先安裝第三方擴展包「NLsolve」：julia> using Pkg; Pkg.add("NLsolve") 成功之後才能使用;
# # https://github.com/JuliaNLSolvers/NLsolve.jl
# using Roots;  # 導入第三方擴展包「Roots」，用於求解任意形式一元非缐性方程，需要在控制臺先安裝第三方擴展包「Roots」：julia> using Pkg; Pkg.add("Roots") 成功之後才能使用;
# # https://juliamath.github.io/Roots.jl/stable
# # https://github.com/JuliaMath/Roots.jl
# using ForwardDiff;  # 導入第三方擴展包「ForwardDiff」，用於任意形式一元方程數值微分（自動微分）計算，需要在控制臺先安裝第三方擴展包「ForwardDiff」：julia> using Pkg; Pkg.add("ForwardDiff") 成功之後才能使用;
# # https://juliadiff.org/ForwardDiff.jl/stable/
# # https://github.com/JuliaDiff/ForwardDiff.jl
# using Calculus;  # 導入第三方擴展包「Calculus」，用於任意形式多元方程數值微分（自動微分）計算，需要在控制臺先安裝第三方擴展包「Calculus」：julia> using Pkg; Pkg.add("Calculus") 成功之後才能使用;
# # https://github.com/JuliaMath/Calculus.jl
# using Cubature;  # 導入第三方擴展包「Cubature」，用於任意形式多元方程數值積分（自動積分）計算，需要在控制臺先安裝第三方擴展包「Cubature」：julia> using Pkg; Pkg.add("Cubature") 成功之後才能使用;
# # https://github.com/JuliaMath/Cubature.jl
# using DifferentialEquations;  # 導入第三方擴展包「DifferentialEquations」，用於求解任意形式微分方程，需要在控制臺先安裝第三方擴展包「DifferentialEquations」：julia> using Pkg; Pkg.add("DifferentialEquations") 成功之後才能使用;
# # https://docs.sciml.ai/DiffEqDocs/stable/
# # https://github.com/SciML/DifferentialEquations.jl
# using Symbolics;  # 導入第三方擴展包「Symbolics」，用於符號計算，需要在控制臺先安裝第三方擴展包「Symbolics」：julia> using Pkg; Pkg.add("Symbolics") 成功之後才能使用;
# # https://symbolics.juliasymbolics.org/stable/
# # https://github.com/JuliaSymbolics/Symbolics.jl
# using SymPy;  # 導入第三方擴展包「SymPy」，用於符號計算，需要在控制臺先安裝第三方擴展包「SymPy」：julia> using Pkg; Pkg.add("SymPy") 成功之後才能使用;
# # https://jverzani.github.io/SymPyCore.jl/dev/
# # https://github.com/JuliaPy/SymPy.jl
# using TimeSeries;  # 導入第三方擴展包「TimeSeries」，用於連續型數據（continuous）的時間序列（Time Series）分析，需要在控制臺先安裝第三方擴展包「TimeSeries」：julia> using Pkg; Pkg.add("TimeSeries") 成功之後才能使用;
# # https://juliastats.org/TimeSeries.jl/latest/
# # https://github.com/JuliaStats/TimeSeries.jl
# using CountTimeSeries;  # 導入第三方擴展包「CountTimeSeries」，用於離散型數據（discrete）的時間序列（Time Series）分析，需要在控制臺先安裝第三方擴展包「CountTimeSeries」：julia> using Pkg; Pkg.add("CountTimeSeries") 成功之後才能使用;
# # https://github.com/ManuelStapper/CountTimeSeries.jl
# # https://github.com/ManuelStapper/CountTimeSeries.jl/blob/master/CountTimeSeries_documentation.pdf

Distributed.@everywhere using Statistics, Dates, Distributed, Optim, Gadfly, Cairo, Fontconfig;

# 使用 Base.MainInclude.include() 函數可導入本地 Julia 脚本文檔到當前位置執行;
# Base.MainInclude.include("./Statis_Descript.jl");
# Base.MainInclude.include(Base.Filesystem.joinpath(Base.@__DIR__, "Statis_Descript.jl"));
# Base.Filesystem.joinpath(Base.@__DIR__, "Statis_Descript.jl")
# Base.Filesystem.joinpath(Base.Filesystem.abspath(".."), "lib", "Statis_Descript.jl")
# Base.Filesystem.joinpath(Base.Filesystem.pwd(), "lib", "Statis_Descript.jl")

# 匯入自定義的日棒缐（K-Line）原始數據整理模組脚本文檔「./Quantitative_Data_Cleaning.jl」;
# Base.MainInclude.include("./Quantitative_Data_Cleaning.jl");

# 匯入自定義的量化交易指標計算模組脚本文檔「./Quantitative_Indicators.jl」;
Base.MainInclude.include("./Quantitative_Indicators.jl");
# return_Intuitive_Momentum = Intuitive_Momentum(
#     training_data["ticker_symbol"]["close_price"],  # ::Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1},
#     Core.Int64(3);  # 觀察收益率歷史向前推的交易日長度;
#     y_P_Positive = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 增長率（正）的可能性（頻率）示意;
#     y_P_Negative = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 衰退率（負）的可能性（頻率）示意;
#     weight = Core.nothing  # Core.Array{Core.Float64, 1}()  # [Core.Float64(Core.Int64(i) / Core.Int64(P1)) for i in 1:Core.Int64(P1)]  # ::Core.Array{Core.Any, 1} = Core.Array{Core.Float64, 1}()  # 每計增長率的權重（weight）值，距離當下時長的倒數（直覺推理有效性示意）;
# );
# println("closing price growth rate", return_Intuitive_Momentum);
# return_Intuitive_Momentum_KLine = Intuitive_Momentum_KLine(
#     Base.Dict{Core.String, Core.Any}(
#         "date_transaction" => training_data["ticker_symbol"]["date_transaction"],  # 交易日期;
#         "turnover_volume" => training_data["ticker_symbol"]["turnover_volume"],  # 成交量;
#         # "turnover_amount" => training_data["ticker_symbol"]["turnover_amount"],  # 成交總金額;
#         "opening_price" => training_data["ticker_symbol"]["opening_price"],  # 開盤成交價;
#         "close_price" => training_data["ticker_symbol"]["close_price"],  # 收盤成交價;
#         "low_price" => training_data["ticker_symbol"]["low_price"],  # 最低成交價;
#         "high_price" => training_data["ticker_symbol"]["high_price"],  # 最高成交價;
#         # "focus" => training_data["ticker_symbol"]["focus"],  # 當日成交價重心;
#         # "amplitude" => training_data["ticker_symbol"]["amplitude"],  # 當日成交價絕對振幅;
#         # "amplitude_rate" => training_data["ticker_symbol"]["amplitude_rate"],  # 當日成交價相對振幅（%）;
#         # "opening_price_Standardization" => training_data["ticker_symbol"]["opening_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
#         # "closing_price_Standardization" => training_data["ticker_symbol"]["closing_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
#         # "low_price_Standardization" => training_data["ticker_symbol"]["low_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日最低成交價標準化值;
#         # "high_price_Standardization" => training_data["ticker_symbol"]["high_price_Standardization"],  # 日棒缐（K Line Daily）數據交易日最高成交價標準化值;
#         "turnover_volume_growth_rate" => training_data["ticker_symbol"]["turnover_volume_growth_rate"],  # 成交量的成長率;
#         "opening_price_growth_rate" => training_data["ticker_symbol"]["opening_price_growth_rate"],  # 開盤價的成長率;
#         "closing_price_growth_rate" => training_data["ticker_symbol"]["closing_price_growth_rate"],  # 收盤價的成長率;
#         "closing_minus_opening_price_growth_rate" => training_data["ticker_symbol"]["closing_minus_opening_price_growth_rate"],  # 收盤價減開盤價的成長率;
#         "high_price_proportion" => training_data["ticker_symbol"]["high_price_proportion"],  # 收盤價和開盤價裏的最大值占最高價的比例;
#         "low_price_proportion" => training_data["ticker_symbol"]["low_price_proportion"],  # 最低價占收盤價和開盤價裏的最小值的比例;
#         # "turnover_rate" => training_data["ticker_symbol"]["turnover_rate"],  # 成交量換手率;
#         # "price_earnings" => training_data["ticker_symbol"]["price_earnings"],  # 每股收益（公司經營利潤率 ÷ 股本）;
#         # "book_value_per_share" => training_data["ticker_symbol"]["book_value_per_share"],  # 每股净值（公司净資產 ÷ 股本）;
#         # "capitalization" => training_data["ticker_symbol"]["capitalization"]  # 總市值;
#     ),
#     Core.Int64(3);  # 觀察收益率歷史向前推的交易日長度;
#     y_P_Positive = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 增長率（正）的可能性（頻率）示意;
#     y_P_Negative = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 衰退率（負）的可能性（頻率）示意;
#     weight = Core.nothing,  # [Core.Float64(Core.Int64(j) / Core.Int64(P1)) for j in 1:Core.Int64(P1)],
#     Intuitive_Momentum = Intuitive_Momentum
# );
# println("turnover volume growth rate", return_Intuitive_Momentum_KLine["P1_turnover_volume_growth_rate"]);
# println("opening price growth rate", return_Intuitive_Momentum_KLine["P1_opening_price_growth_rate"]);
# println("closing price growth rate", return_Intuitive_Momentum_KLine["P1_closing_price_growth_rate"]);
# println("closing minus opening price growth rate", return_Intuitive_Momentum_KLine["P1_closing_minus_opening_price_growth_rate"]);
# println("high price proportion", return_Intuitive_Momentum_KLine["P1_high_price_proportion"]);
# println("low price proportion", return_Intuitive_Momentum_KLine["P1_low_price_proportion"]);
# println("intuitive momentum indicator", return_Intuitive_Momentum_KLine["P1_Intuitive_Momentum"]);



# 一、擇時（Market Timing）;

# 含有約束條件的優化（Optimization）模型（Model）;
# 擇時模型目標函數;
function MarketTiming_fit_model(
    trainingData,  # ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}(),  # ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}("ticker_symbol" => Base.Dict{Core.String, Core.Any}("date_transaction" => ::Core.Array{Dates.Date, 1}[Dates.Date("2024-01-02")], "turnover_volume" => ::Core.Array{Core.Int64, 1}[Core.Int64()], "opening_price" => ::Core.Array{Core.Float64, 1}[Core.Float64()], "close_price" => ::Core.Array{Core.Float64, 1}[Core.Float64()], "low_price" => ::Core.Array{Core.Float64, 1}[Core.Float64()], "high_price" => ::Core.Array{Core.Float64, 1}[Core.Float64()])),
    P1,  # 觀察收益率歷史向前推的交易日長度，整型（Core.Int64），離散型變量;
    P2,  # 買入閾值，浮點型（Core.Float64），連續型變量;
    P3,  # 賣出閾值，浮點型（Core.Float64），連續型變量;
    P4,  # risk threshold drawdown loss; # 風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    Quantitative_Indicators_Function,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
)

    # 函數返回值字典（Dict）;
    result = Base.Dict{Core.String, Core.Any}();  # 函數返回值字典（Dict）;

    # 計算各股票擇時規則的參數值（收盤價的滑動平均值）的序列;
    if Base.isa(trainingData, Base.Dict) && Base.length(trainingData) > 0
        for (key, value) in trainingData
            # println("Key: $key, Value: $value");
            # if Base.isa(value, Base.Dict) && (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array)
            if Base.isa(value, Base.Dict) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array)

                x0 = value["date_transaction"];  # 交易日期;
                x1 = value["turnover_volume"];  # 成交量;
                # x2 = value["turnover_amount"];  # 成交總金額;
                x3 = value["opening_price"];  # 開盤成交價;
                x4 = value["close_price"];  # 收盤成交價;
                x5 = value["low_price"];  # 最低成交價;
                x6 = value["high_price"];  # 最高成交價;
                # x7 = value["focus"];  # 當日成交價重心;
                # x8 = value["amplitude"];  # 當日成交價絕對振幅;
                # x9 = value["amplitude_rate"];  # 當日成交價相對振幅（%）;
                # x10 = value["opening_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
                # x11 = value["closing_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
                # x12 = value["low_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日最低成交價標準化值;
                # x13 = value["high_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日最高成交價標準化值;
                x14 = value["turnover_volume_growth_rate"];  # 成交量的成長率;
                x15 = value["opening_price_growth_rate"];  # 開盤價的成長率;
                x16 = value["closing_price_growth_rate"];  # 收盤價的成長率;
                x17 = value["closing_minus_opening_price_growth_rate"];  # 收盤價減開盤價的成長率;
                x18 = value["high_price_proportion"];  # 收盤價和開盤價裏的最大值占最高價的比例;
                x19 = value["low_price_proportion"];  # 最低價占收盤價和開盤價裏的最小值的比例;
                # x20 = value["turnover_rate"];  # 成交量換手率;
                # x21 = value["price_earnings"];  # 每股收益（公司經營利潤率 ÷ 股本）;
                # x22 = value["book_value_per_share"];  # 每股净值（公司净資產 ÷ 股本）;
                # x23 = value["capitalization"];  # 總市值;
                # x24 = value["moving_average_5"];  # 收盤價 5 日滑動平均缐;
                # x25 = value["moving_average_10"];  # 收盤價 10 日滑動平均缐;
                # x26 = value["moving_average_20"];  # 收盤價 20 日滑動平均缐;
                # x27 = value["moving_average_30"];  # 收盤價 30 日滑動平均缐;

                # # 計算日棒缐（K Line Daily）數據的重心值（Focus）序列;
                # focus = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                # # 計算日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）序列;
                # amplitude = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                # # 計算日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）序列;
                # amplitude_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                # # 計算日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值序列;
                # opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                # # 計算日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值序列;
                # closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                # # 計算日棒缐（K Line Daily）數據交易日最低成交價標準化值序列;
                # low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據交易日最低成交價標準化;
                # # 計算日棒缐（K Line Daily）數據交易日最高成交價標準化值序列;
                # high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據交易日最高成交價標準化;
                # # for i = 1:Core.Int64(Base.findmin([Base.length(value["opening_price"]), Base.length(value["close_price"]), Base.length(value["low_price"]), Base.length(value["high_price"])])[1])
                # for i = 1:Core.Int64(Base.findmin([Base.length(x3), Base.length(x4), Base.length(x5), Base.length(x6)])[1])
                #     # 計算日棒缐（K Line Daily）數據的重心值（Focus）序列;
                #     # date_i_focus = Statistics.mean([value["opening_price"][i], value["close_price"][i], value["low_price"][i], value["high_price"][i]]);
                #     date_i_focus = Statistics.mean([x3[i], x4[i], x5[i], x6[i]]);
                #     date_i_focus = Core.Float64(date_i_focus);
                #     Base.push!(focus, date_i_focus);  # 使用 push! 函數在數組末尾追加推入新元素;

                #     # 計算日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）序列;
                #     date_i_amplitude = Statistics.std(
                #         [
                #             x3[i],  # value["opening_price"][i],
                #             x4[i],  # value["close_price"][i],
                #             x5[i],  # value["low_price"][i],
                #             x6[i]  # value["high_price"][i]
                #         ];
                #         corrected = true
                #     );
                #     # if Core.Int64(Base.length([opening_price[i], close_price[i], low_price[i], high_price[i]])) === Core.Int64(1)
                #     #     date_i_amplitude = Statistics.std([opening_price[i], close_price[i], low_price[i], high_price[i]]; corrected=false);
                #     # elseif Core.Int64(Base.length([opening_price[i], close_price[i], low_price[i], high_price[i]])) > Core.Int64(1)
                #     #     date_i_amplitude = Statistics.std([opening_price[i], close_price[i], low_price[i], high_price[i]]; corrected=true);
                #     # else
                #     # end
                #     date_i_amplitude = Core.Float64(date_i_amplitude);
                #     Base.push!(amplitude, date_i_amplitude);  # 使用 push! 函數在數組末尾追加推入新元素;

                #     # 計算日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）序列;
                #     date_i_amplitude_rate = Core.Float64(date_i_amplitude);  # Base.missing;  # Core.nothing;  # +Base.Inf;
                #     if Core.Float64(date_i_focus) === Core.Float64(0.0)
                #         date_i_amplitude_rate = (+Base.Inf);  # Core.Float64(date_i_amplitude);
                #     else
                #         date_i_amplitude_rate = Core.Float64(date_i_amplitude / date_i_focus);
                #     end
                #     Base.push!(amplitude_rate, date_i_amplitude_rate);  # 使用 push! 函數在數組末尾追加推入新元素;

                #     # 計算日棒缐（K Line Daily）數據標準化值序列;
                #     date_i_opening_price_Standardization = x3[i];  # value["opening_price"][i];  # 計算日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
                #     date_i_closing_price_Standardization = x4[i];  # value["close_price"][i];  # 計算日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
                #     date_i_low_price_Standardization = x5[i];  # value["low_price"][i];  # 計算日棒缐（K Line Daily）數據交易日最低成交價標準化值;
                #     date_i_high_price_Standardization = x6[i];  # value["high_price"][i];  # 計算日棒缐（K Line Daily）數據交易日最高成交價標準化值;
                #     # if Core.Float64(value["amplitude"][i]) === Core.Float64(0.0)
                #     if Core.Float64(date_i_amplitude) === Core.Float64(0.0)
                #         date_i_opening_price_Standardization = Core.Float64(x3[i] - date_i_focus);  # Core.Float64(value["opening_price"][i] - value["focus"][i]);
                #         date_i_closing_price_Standardization = Core.Float64(x4[i] - date_i_focus);  # Core.Float64(value["close_price"][i] - value["focus"][i]);
                #         date_i_low_price_Standardization = Core.Float64(x5[i] - date_i_focus);  # Core.Float64(value["low_price"][i] - value["focus"][i]);
                #         date_i_high_price_Standardization = Core.Float64(x6[i] - date_i_focus);  # Core.Float64(value["high_price"][i] - value["focus"][i]);
                #     else
                #         date_i_opening_price_Standardization = Core.Float64((x3[i] - date_i_focus) / date_i_amplitude);  # Core.Float64((value["opening_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                #         date_i_closing_price_Standardization = Core.Float64((x4[i] - date_i_focus) / date_i_amplitude);  # Core.Float64((value["close_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                #         date_i_low_price_Standardization = Core.Float64((x5[i] - date_i_focus) / date_i_amplitude);  # Core.Float64((value["low_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                #         date_i_high_price_Standardization = Core.Float64((x6[i] - date_i_focus) / date_i_amplitude);  # Core.Float64((value["high_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                #     end
                #     Base.push!(opening_price_Standardization, date_i_opening_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     Base.push!(closing_price_Standardization, date_i_closing_price_Standardization);
                #     Base.push!(low_price_Standardization, date_i_low_price_Standardization);
                #     Base.push!(high_price_Standardization, date_i_high_price_Standardization);
                # end
                # trainingData[key]["focus"] = focus;
                # focus = Core.nothing;  # 釋放内存;
                # trainingData[key]["amplitude"] = amplitude;
                # amplitude = Core.nothing;  # 釋放内存;
                # trainingData[key]["amplitude_rate"] = amplitude_rate;
                # amplitude_rate = Core.nothing;  # 釋放内存;
                # trainingData[key]["opening_price_Standardization"] = opening_price_Standardization;
                # opening_price_Standardization = Core.nothing;  # 釋放内存;
                # trainingData[key]["closing_price_Standardization"] = closing_price_Standardization;
                # closing_price_Standardization = Core.nothing;  # 釋放内存;
                # trainingData[key]["low_price_Standardization"] = low_price_Standardization;
                # low_price_Standardization = Core.nothing;  # 釋放内存;
                # trainingData[key]["high_price_Standardization"] = high_price_Standardization;
                # high_price_Standardization = Core.nothing;  # 釋放内存;

                # # 計算相鄰兩個交易日之間成交股票數量的變化率值的序列，並保存入 1 維數組;
                # turnover_volume_growth_rate_Dict_index_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();
                # # for i = 1:Base.length(value["turnover_volume"])
                # for i = 1:Base.length(x1)
                #     x_growth_rate = Base.missing;
                #     if Core.Int64(i) < Core.Int64(2)
                #         x_growth_rate = Core.Float64(0.0);
                #         # x_growth_rate = Base.missing;
                #         # x_growth_rate = Core.nothing;
                #     else
                #         if Core.Int64(x1[i - 1]) !== Core.Int64(0)
                #             x_growth_rate = Core.Float64(x1[i] / x1[i - 1]) - Core.Float64(1.0);
                #         elseif Core.Int64(x1[i - 1]) === Core.Int64(0) && Core.Int64(x1[i]) === Core.Int64(0)
                #             x_growth_rate = Core.Float64(0.0);
                #             # x_growth_rate = Base.missing;
                #             # x_growth_rate = Core.nothing;
                #         elseif Core.Int64(x1[i - 1]) === Core.Int64(0) && Core.Int64(x1[i]) > Core.Int64(0)
                #             x_growth_rate = (+Base.Inf);
                #         elseif Core.Int64(x1[i - 1]) === Core.Int64(0) && Core.Int64(x1[i]) < Core.Int64(0)
                #             x_growth_rate = (-Base.Inf);
                #         else
                #         end
                #     end
                #     # println(x_growth_rate);
                #     Base.push!(turnover_volume_growth_rate_Dict_index_Array, x_growth_rate);  # 使用 push! 函數在數組末尾追加推入新元;
                # end
                # trainingData[key]["turnover_volume_growth_rate"] = turnover_volume_growth_rate_Dict_index_Array;
                # turnover_volume_growth_rate_Dict_index_Array = Core.nothing;  # 釋放内存;

                # # 計算相鄰兩個交易日之間開盤股票價格的變化率值的序列，並保存入 1 維數組;
                # opening_price_growth_rate_Dict_index_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();
                # # for i = 1:Base.length(value["opening_price"])
                # for i = 1:Base.length(x3)
                #     x_growth_rate = Base.missing;
                #     if Core.Int64(i) < Core.Int64(2)
                #         x_growth_rate = Core.Float64(0.0);
                #         # x_growth_rate = Base.missing;
                #         # x_growth_rate = Core.nothing;
                #     else
                #         if Core.Float64(x3[i - 1]) !== Core.Float64(0.0)
                #             x_growth_rate = Core.Float64(x3[i] / x3[i - 1]) - Core.Float64(1.0);
                #         elseif Core.Float64(x3[i - 1]) === Core.Float64(0.0) && Core.Float64(x3[i]) === Core.Float64(0.0)
                #             x_growth_rate = Core.Float64(0.0);
                #             # x_growth_rate = Base.missing;
                #             # x_growth_rate = Core.nothing;
                #         elseif Core.Float64(x3[i - 1]) === Core.Float64(0.0) && Core.Float64(x3[i]) > Core.Float64(0.0)
                #             x_growth_rate = (+Base.Inf);
                #         elseif Core.Float64(x3[i - 1]) === Core.Float64(0.0) && Core.Float64(x3[i]) < Core.Float64(0.0)
                #             x_growth_rate = (-Base.Inf);
                #         else
                #         end
                #     end
                #     # println(x_growth_rate);
                #     Base.push!(opening_price_growth_rate_Dict_index_Array, x_growth_rate);
                # end
                # trainingData[key]["opening_price_growth_rate"] = opening_price_growth_rate_Dict_index_Array;
                # opening_price_growth_rate_Dict_index_Array = Core.nothing;  # 釋放内存;

                # # 計算相鄰兩個交易日之間收盤股票價格的變化率值的序列，並保存入 1 維數組;
                # closing_price_growth_rate_Dict_index_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();
                # # for i = 1:Base.length(value["close_price"])
                # for i = 1:Base.length(x4)
                #     x_growth_rate = Base.missing;
                #     if Core.Int64(i) < Core.Int64(2)
                #         x_growth_rate = Core.Float64(0.0);
                #         # x_growth_rate = Base.missing;
                #         # x_growth_rate = Core.nothing;
                #     else
                #         if Core.Float64(x4[i - 1]) !== Core.Float64(0.0)
                #             x_growth_rate = Core.Float64(x4[i] / x4[i - 1]) - Core.Float64(1.0);
                #         elseif Core.Float64(x4[i - 1]) === Core.Float64(0.0) && Core.Float64(x4[i]) === Core.Float64(0.0)
                #             x_growth_rate = Core.Float64(0.0);
                #             # x_growth_rate = Base.missing;
                #             # x_growth_rate = Core.nothing;
                #         elseif Core.Float64(x4[i - 1]) === Core.Float64(0.0) && Core.Float64(x4[i]) > Core.Float64(0.0)
                #             x_growth_rate = (+Base.Inf);
                #         elseif Core.Float64(x4[i - 1]) === Core.Float64(0.0) && Core.Float64(x4[i]) < Core.Float64(0.0)
                #             x_growth_rate = (-Base.Inf);
                #         else
                #         end
                #     end
                #     # println(x_growth_rate);
                #     Base.push!(closing_price_growth_rate_Dict_index_Array, x_growth_rate);
                # end
                # trainingData[key]["closing_price_growth_rate"] = closing_price_growth_rate_Dict_index_Array;
                # closing_price_growth_rate_Dict_index_Array = Core.nothing;  # 釋放内存;

                # # 計算每個交易日股票收盤價格減去開盤價格的變化率值的序列，並保存入 1 維數組;
                # closing_minus_opening_price_growth_rate_Dict_index_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();
                # # for i = 1:Core.Int64(Base.findmin([Base.length(value["opening_price"]), Base.length(value["close_price"])])[1])
                # for i = 1:Core.Int64(Base.findmin([Base.length(x3), Base.length(x4)])[1])
                #     x_growth_rate = Base.missing;
                #     if Core.Float64(x3[i]) !== Core.Float64(0.0)
                #         x_growth_rate = Core.Float64(x4[i] / x3[i]) - Core.Float64(1.0);
                #     elseif Core.Float64(x3[i]) === Core.Float64(0.0) && Core.Float64(x4[i]) === Core.Float64(0.0)
                #         x_growth_rate = Core.Float64(0.0);
                #         # x_growth_rate = Base.missing;
                #         # x_growth_rate = Core.nothing;
                #     elseif Core.Float64(x3[i]) === Core.Float64(0.0) && Core.Float64(x4[i]) > Core.Float64(0.0)
                #         x_growth_rate = (+Base.Inf);
                #     elseif Core.Float64(x3[i]) === Core.Float64(0.0) && Core.Float64(x4[i]) < Core.Float64(0.0)
                #         x_growth_rate = (-Base.Inf);
                #     else
                #     end
                #     # println(x_growth_rate);
                #     Base.push!(closing_minus_opening_price_growth_rate_Dict_index_Array, x_growth_rate);  # 使用 push! 函數在數組末尾追加推入新元;
                # end
                # trainingData[key]["closing_minus_opening_price_growth_rate"] = closing_minus_opening_price_growth_rate_Dict_index_Array;
                # closing_minus_opening_price_growth_rate_Dict_index_Array = Core.nothing;  # 釋放内存;

                # # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值的序列，並保存入 1 維數組;
                # high_price_proportion_Dict_index_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();
                # # for i = 1:Core.Int64(Base.findmin([Base.length(value["high_price"]), Base.length(value["opening_price"]), Base.length(value["close_price"])])[1])
                # for i = 1:Core.Int64(Base.findmin([Base.length(x6), Base.length(x3), Base.length(x4)])[1])
                #     x_growth_rate = Base.missing;
                #     if Core.Float64(x6[i]) !== Core.Float64(0.0)
                #         x_growth_rate = Core.Float64(Base.findmax([x3[i], x4[i]])[1]) / Core.Float64(x6[i]);
                #     elseif Core.Float64(x6[i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([x3[i], x4[i]])[1]) === Core.Float64(0.0)
                #         x_growth_rate = Core.Float64(0.0);
                #         # x_growth_rate = Base.missing;
                #         # x_growth_rate = Core.nothing;
                #     elseif Core.Float64(x6[i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([x3[i], x4[i]])[1]) > Core.Float64(0.0)
                #         x_growth_rate = (+Base.Inf);
                #     elseif Core.Float64(x6[i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([x3[i], x4[i]])[1]) < Core.Float64(0.0)
                #         x_growth_rate = (-Base.Inf);
                #     else
                #     end
                #     # println(x_growth_rate);
                #     Base.push!(high_price_proportion_Dict_index_Array, x_growth_rate);
                # end
                # trainingData[key]["high_price_proportion"] = high_price_proportion_Dict_index_Array;
                # high_price_proportion_Dict_index_Array = Core.nothing;  # 釋放内存;

                # # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值的序列，並保存入 1 維數組;
                # low_price_proportion_Dict_index_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();
                # # for i = 1:Core.Int64(Base.findmin([Base.length(value["low_price"]), Base.length(value["opening_price"]), Base.length(value["close_price"])])[1])
                # for i = 1:Core.Int64(Base.findmin([Base.length(x5), Base.length(x3), Base.length(x4)])[1])
                #     x_growth_rate = Base.missing;
                #     if Core.Float64(Base.findmin([x3[i], x4[i]])[1]) !== Core.Float64(0.0)
                #         x_growth_rate = Core.Float64(x5[i]) / Core.Float64(Base.findmin([x3[i], x4[i]])[1]);
                #     elseif Core.Float64(Base.findmin([x3[i], x4[i]])[1]) === Core.Float64(0.0) && Core.Float64(x5[i]) === Core.Float64(0.0)
                #         x_growth_rate = Core.Float64(0.0);
                #         # x_growth_rate = Base.missing;
                #         # x_growth_rate = Core.nothing;
                #     elseif Core.Float64(Base.findmin([x3[i], x4[i]])[1]) === Core.Float64(0.0) && Core.Float64(x5[i]) > Core.Float64(0.0)
                #         x_growth_rate = (+Base.Inf);
                #     elseif Core.Float64(Base.findmin([x3[i], x4[i]])[1]) === Core.Float64(0.0) && Core.Float64(x5[i]) < Core.Float64(0.0)
                #         x_growth_rate = (-Base.Inf);
                #     else
                #     end
                #     # println(x_growth_rate);
                #     Base.push!(low_price_proportion_Dict_index_Array, x_growth_rate);
                # end
                # trainingData[key]["low_price_proportion"] = low_price_proportion_Dict_index_Array;
                # low_price_proportion_Dict_index_Array = Core.nothing;  # 釋放内存;

                # 複合指標擇時（勢强），依照擇時規則計算得到參數 P1、P2、P3 值的序列，並保存入數組;
                P1_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 依照擇時規則計算得到參數 P1 值的序列，並保存入數組;
                # for i = 1:Core.Int64(Base.findmin([Base.length(x14), Base.length(x15), Base.length(x16), Base.length(x17), Base.length(x18), Base.length(x19)])[1])
                # for i = 1:Core.Int64(Base.findmin([Base.length(turnover_volume_growth_rate_Dict_index_Array), Base.length(opening_price_growth_rate_Dict_index_Array), Base.length(closing_price_growth_rate_Dict_index_Array), Base.length(closing_minus_opening_price_growth_rate_Dict_index_Array), Base.length(high_price_proportion_Dict_index_Array), Base.length(low_price_proportion_Dict_index_Array)])[1])
                for i = 1:Core.Int64(Base.findmin([Base.length(value["turnover_volume_growth_rate"]), Base.length(value["opening_price_growth_rate"]), Base.length(value["closing_price_growth_rate"]), Base.length(value["closing_minus_opening_price_growth_rate"]), Base.length(value["high_price_proportion"]), Base.length(value["low_price_proportion"])])[1])

                    index_PickStock_P1 = Base.missing;  # Core.nothing;  # (-Base.Inf);  Core.Float64(0.0);
                    if Core.Int64(i) >= Core.Int64(P1)

                        x0 = value["date_transaction"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 交易日期;
                        x1 = value["turnover_volume"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 成交量;
                        # x2 = value["turnover_amount"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 成交總金額;
                        x3 = value["opening_price"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 開盤成交價;
                        x4 = value["close_price"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤成交價;
                        x5 = value["low_price"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 最低成交價;
                        x6 = value["high_price"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 最高成交價;
                        # x7 = value["focus"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 當日成交價重心;
                        # x8 = value["amplitude"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 當日成交價絕對振幅;
                        # x9 = value["amplitude_rate"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 當日成交價相對振幅（%）;
                        # x10 = value["opening_price_Standardization"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
                        # x11 = value["closing_price_Standardization"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
                        # x12 = value["low_price_Standardization"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 日棒缐（K Line Daily）數據交易日最低成交價標準化值;
                        # x13 = value["high_price_Standardization"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 日棒缐（K Line Daily）數據交易日最高成交價標準化值;
                        x14 = value["turnover_volume_growth_rate"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 成交量的成長率;
                        x15 = value["opening_price_growth_rate"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 開盤價的成長率;
                        x16 = value["closing_price_growth_rate"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價的成長率;
                        x17 = value["closing_minus_opening_price_growth_rate"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價減開盤價的成長率;
                        x18 = value["high_price_proportion"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價和開盤價裏的最大值占最高價的比例;
                        x19 = value["low_price_proportion"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 最低價占收盤價和開盤價裏的最小值的比例;
                        # x20 = value["turnover_rate"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 成交量換手率;
                        # x21 = value["price_earnings"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 每股收益（公司經營利潤率 ÷ 股本）;
                        # x22 = value["book_value_per_share"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 每股净值（公司净資產 ÷ 股本）;
                        # x23 = value["capitalization"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 總市值;
                        # x24 = value["moving_average_5"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價 5 日滑動平均缐;
                        # x25 = value["moving_average_10"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價 10 日滑動平均缐;
                        # x26 = value["moving_average_20"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價 20 日滑動平均缐;
                        # x27 = value["moving_average_30"][Core.Int64(Core.Int64(i) - Core.Int64(P1) + Core.Int64(1)):1:i];  # 收盤價 30 日滑動平均缐;

                        # 跳過序列中的第一個值，因爲第一個值無增長率;
                        if Core.Int64(i) > Core.Int64(1)

                            y = Quantitative_Indicators_Function(
                                Base.Dict{Core.String, Core.Any}(
                                    "date_transaction" => x0,
                                    "turnover_volume" => x1,
                                    # "turnover_volume" => x2,
                                    "opening_price" => x3,
                                    "close_price" => x4,
                                    "low_price" => x5,
                                    "high_price" => x6,
                                    # "focus" => x7,
                                    # "amplitude" => x8,
                                    # "amplitude_rate" => x9,
                                    # "opening_price_Standardization" => x10,
                                    # "closing_price_Standardization" => x11,
                                    # "low_price_Standardization" => x12,
                                    # "high_price_Standardization" => x13,
                                    "turnover_volume_growth_rate" => x14,
                                    "opening_price_growth_rate" => x15,
                                    "closing_price_growth_rate" => x16,
                                    "closing_minus_opening_price_growth_rate" => x17,
                                    "high_price_proportion" => x18,
                                    "low_price_proportion" => x19
                                ),
                                P1;  # 觀察收益率歷史向前推的交易日長度;
                                y_P_Positive = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 增長率（正）的可能性（頻率）示意;
                                y_P_Negative = Core.nothing,  # ::Core.Float64 = Core.Float64(1.0),  # 衰退率（負）的可能性（頻率）示意;
                                weight = Core.nothing,  # [Core.Float64(Core.Int64(j) / Core.Int64(P1)) for j in 1:Core.Int64(P1)],
                                Intuitive_Momentum = Intuitive_Momentum
                            );
                            index_PickStock_P1_turnover_volume_growth_rate = y["P1_turnover_volume_growth_rate"][Core.Int64(Base.length(y["P1_turnover_volume_growth_rate"]))];
                            index_PickStock_P1_opening_price_growth_rate = y["P1_opening_price_growth_rate"][Core.Int64(Base.length(y["P1_opening_price_growth_rate"]))];
                            index_PickStock_P1_closing_price_growth_rate = y["P1_closing_price_growth_rate"][Core.Int64(Base.length(y["P1_closing_price_growth_rate"]))];
                            index_PickStock_P1_closing_minus_opening_price_growth_rate = y["P1_closing_minus_opening_price_growth_rate"][Core.Int64(Base.length(y["P1_closing_minus_opening_price_growth_rate"]))];
                            index_PickStock_P1_high_price_proportion = y["P1_high_price_proportion"][Core.Int64(Base.length(y["P1_high_price_proportion"]))];
                            index_PickStock_P1_low_price_proportion = y["P1_low_price_proportion"][Core.Int64(Base.length(y["P1_low_price_proportion"]))];
                            index_PickStock_P1 = y["P1_Intuitive_Momentum"][Core.Int64(Base.length(y["P1_Intuitive_Momentum"]))];
                        end
                    end
                    Base.push!(P1_Array, index_PickStock_P1);  # 使用 push! 函數在數組末尾追加推入新元;
                end
                trainingData[key]["P1_Array"] = P1_Array;  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
                P1_Array = Core.nothing;  # 釋放内存;

                # 釋放内存;
                x0 = Core.nothing;
                x1 = Core.nothing;
                x3 = Core.nothing;
                x4 = Core.nothing;
                x5 = Core.nothing;
                x6 = Core.nothing;
                x14 = Core.nothing;
                x15 = Core.nothing;
                x16 = Core.nothing;
                x17 = Core.nothing;
                x18 = Core.nothing;
                x19 = Core.nothing;
            end
        end
    end

    # 依照擇時規則查找操作日期，並計算此擇時規則的獲利率;
    if Base.isa(trainingData, Base.Dict) && Base.length(trainingData) > 0
        # 遍歷字典的鍵:值對;
        for (key, value) in trainingData
            # println("Key: $key, Value: $value");
            # if Base.isa(value, Base.Dict) && (Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array) && (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array) && (Base.haskey(value, "focus") && Base.typeof(value["focus"]) <: Core.Array) && (Base.haskey(value, "amplitude") && Base.typeof(value["amplitude"]) <: Core.Array) && (Base.haskey(value, "amplitude_rate") && Base.typeof(value["amplitude_rate"]) <: Core.Array) && (Base.haskey(value, "turnover_volume_growth_rate") && Base.typeof(value["turnover_volume_growth_rate"]) <: Core.Array) && (Base.haskey(value, "opening_price_growth_rate") && Base.typeof(value["opening_price_growth_rate"]) <: Core.Array) && (Base.haskey(value, "closing_price_growth_rate") && Base.typeof(value["closing_price_growth_rate"]) <: Core.Array) && (Base.haskey(value, "closing_minus_opening_price_growth_rate") && Base.typeof(value["closing_minus_opening_price_growth_rate"]) <: Core.Array) && (Base.haskey(value, "high_price_proportion") && Base.typeof(value["high_price_proportion"]) <: Core.Array) && (Base.haskey(value, "low_price_proportion") && Base.typeof(value["low_price_proportion"]) <: Core.Array)
            # if Base.isa(value, Base.Dict) && (Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array) && (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array) && (Base.haskey(value, "focus") && Base.typeof(value["focus"]) <: Core.Array) && (Base.haskey(value, "amplitude") && Base.typeof(value["amplitude"]) <: Core.Array) && (Base.haskey(value, "amplitude_rate") && Base.typeof(value["amplitude_rate"]) <: Core.Array) && (Base.haskey(value, "moving_average_5") && Base.typeof(value["moving_average_5"]) <: Core.Array) && (Base.haskey(value, "moving_average_10") && Base.typeof(value["moving_average_10"]) <: Core.Array) && (Base.haskey(value, "moving_average_20") && Base.typeof(value["moving_average_20"]) <: Core.Array) && (Base.haskey(value, "moving_average_30") && Base.typeof(value["moving_average_30"]) <: Core.Array)
            if Base.isa(value, Base.Dict) && (Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array) && (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array) && (Base.haskey(value, "focus") && Base.typeof(value["focus"]) <: Core.Array) && (Base.haskey(value, "amplitude") && Base.typeof(value["amplitude"]) <: Core.Array) && (Base.haskey(value, "amplitude_rate") && Base.typeof(value["amplitude_rate"]) <: Core.Array) && (Base.haskey(value, "P1_Array") && Base.typeof(value["P1_Array"]) <: Core.Array)
            # if Base.isa(value, Base.Dict) && (Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array) && (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array) && (Base.haskey(value, "P1_Array") && Base.typeof(value["P1_Array"]) <: Core.Array)

                x0 = value["date_transaction"];  # 交易日期;
                x1 = value["turnover_volume"];  # 成交量;
                # x2 = value["turnover_amount"];  # 成交總金額;
                x3 = value["opening_price"];  # 開盤成交價;
                x4 = value["close_price"];  # 收盤成交價;
                x5 = value["low_price"];  # 最低成交價;
                x6 = value["high_price"];  # 最高成交價;
                x7 = value["focus"];  # 當日成交價重心;
                x8 = value["amplitude"];  # 當日成交價絕對振幅;
                x9 = value["amplitude_rate"];  # 當日成交價相對振幅（%）;
                # x10 = value["opening_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化值;
                # x11 = value["closing_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化值;
                # x12 = value["low_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日最低成交價標準化值;
                # x13 = value["high_price_Standardization"];  # 日棒缐（K Line Daily）數據交易日最高成交價標準化值;
                # x14 = value["turnover_volume_growth_rate"];  # 成交量的成長率;
                # x15 = value["opening_price_growth_rate"];  # 開盤價的成長率;
                # x16 = value["closing_price_growth_rate"];  # 收盤價的成長率;
                # x17 = value["closing_minus_opening_price_growth_rate"];  # 收盤價減開盤價的成長率;
                # x18 = value["high_price_proportion"];  # 收盤價和開盤價裏的最大值占最高價的比例;
                # x19 = value["low_price_proportion"];  # 最低價占收盤價和開盤價裏的最小值的比例;
                # x20 = value["turnover_rate"];  # 成交量換手率;
                # x21 = value["price_earnings"];  # 每股收益（公司經營利潤率 ÷ 股本）;
                # x22 = value["book_value_per_share"];  # 每股净值（公司净資產 ÷ 股本）;
                # x23 = value["capitalization"];  # 總市值;
                # x24 = value["moving_average_5"];  # 收盤價 5 日滑動平均缐;
                # x25 = value["moving_average_10"];  # 收盤價 10 日滑動平均缐;
                # x26 = value["moving_average_20"];  # 收盤價 20 日滑動平均缐;
                # x27 = value["moving_average_30"];  # 收盤價 30 日滑動平均缐;

                # P1_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 依照擇時規則計算得到參數 P1 值的序列，並保存入數組;
                P1_Array = value["P1_Array"];
                # println(P1_Array);

                # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                y_G = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                # 做多（Long Position）記錄;
                y_A_Long_Position = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的差價利潤;
                y_B_Long_Position = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易差價盈虧標示;
                y_C_Long_Position = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的間隔日長;
                y_D_Long_Position = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的日成交價振幅平方和;
                y_E_Long_Position = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的日成交量（換手率）均值;
                # y_F_Long_Position = Core.Array{Core.Any, 1}();  # 按規則執行交易的日期;
                y_F_Long_Position = Core.Array{Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}, 1}();  # 按規則執行交易的日期;
                Index_date_transaction_Long_Position = Core.Int64(0);  # 每兩次對衝交易序號標識;
                y_H_Long_Position = Core.Array{Core.Any, 1}();  # 記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # 做空（Short Selling）記錄;
                y_A_Short_Selling = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的差價利潤;
                y_B_Short_Selling = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易差價盈虧標示;
                y_C_Short_Selling = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的間隔日長;
                y_D_Short_Selling = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的日成交價振幅平方和;
                y_E_Short_Selling = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}();  # 每兩次對衝交易的日成交量（換手率）均值;
                # y_F_Short_Selling = Core.Array{Core.Any, 1}();  # 按規則執行交易的日期;
                y_F_Short_Selling = Core.Array{Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}, 1}();  # 按規則執行交易的日期;
                Index_date_transaction_Short_Selling = Core.Int64(0);  # 每兩次對衝交易序號標識;
                y_H_Short_Selling = Core.Array{Core.Any, 1}();  # 記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                if (Base.typeof(P1_Array) <: Core.Array && Core.Int64(Base.length(P1_Array)) > Core.Int64(P1)) && (Base.typeof(x0) <: Core.Array && Core.Int64(Base.length(x0)) > Core.Int64(P1)) && (Base.typeof(x1) <: Core.Array && Core.Int64(Base.length(x1)) > Core.Int64(P1)) && (Base.typeof(x3) <: Core.Array && Core.Int64(Base.length(x3)) > Core.Int64(P1)) && (Base.typeof(x4) <: Core.Array && Core.Int64(Base.length(x4)) > Core.Int64(P1)) && (Base.typeof(x5) <: Core.Array && Core.Int64(Base.length(x5)) > Core.Int64(P1)) && (Base.typeof(x6) <: Core.Array && Core.Int64(Base.length(x6)) > Core.Int64(P1))

                    # 伸縮框跳躍式遍歷;
                    i = Core.Int64(0);
                    while true

                        i += Core.Int64(1);
                        # i = Core.Int64(i + Core.Int64(1));
                        # println(i);

                        if Core.Int64(i) > Core.Int64(Base.length(P1_Array))
                            break;  # 終止 while...end 循環;
                        end

                        # Core.Int64(Base.findmin([P2, P3])[1])
                        # Core.Int64(Base.findmax([P2, P3])[1])
                        if Core.Int64(i - 1) >= Core.Int64(P1)

                            x_P1 = P1_Array[i];
                            # println(x_P1);

                            x_P1_previous = P1_Array[i - 1];
                            # println(x_P1_previous);

                            if (!((Base.ismissing(x_P1) || Base.isnothing(x_P1)) || (Base.ismissing(x_P1_previous) || Base.isnothing(x_P1_previous))))

                                # 依照選股規則挑選出的股票，計算（融資做多 buying long）交易利潤;
                                if investment_method === "Long_Position_and_Short_Selling" || investment_method === "Long_Position"

                                    # 做多（Long Position）記錄;
                                    y_A_Long_Position_I = Core.Float64(0.0);  # 每兩次對衝交易差價利潤初值;
                                    y_B_Long_Position_I = Core.Int64(0);  # 每兩次對衝交易差價盈虧標示初值;
                                    y_C_Long_Position_I = Core.Int64(0);  #  (+Base.Inf);  # 每兩次對衝交易間隔日長初值;
                                    y_D_Long_Position_I = Core.Float64(0.0);  # 每兩次對衝交易日成交價振幅平方和初值;
                                    y_E_Long_Position_I = Core.Float64(0.0);  # 每兩次對衝交易日成交量（換手率）均值初值;
                                    # 判斷是否進行（融資做多 buying long）對衝交易的第一次買入交易;
                                    if (x_P1_previous <= P2) && (x_P1 > P2)

                                        if Core.Int64(i + 1) <= Core.Int64(Base.length(P1_Array))

                                            # 記錄每個交易日的回撤值序列;
                                            drawdown_Array_Long_Position = Core.Array{Core.Float64, 1}();  # 記錄做多模式每個交易日的回撤值序列;

                                            Index_date_transaction_Long_Position += Core.Int64(1);
                                            # Index_date_transaction_Long_Position = Core.Int64(Index_date_transaction_Long_Position + Core.Int64(1));

                                            # 按規則執行第一次買入（融資做多 buying long）交易的日期;
                                            y_F_Long_Position_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                            y_F_Long_Position_I[1] = x0[i + 1];  # 交易時間日期（Dates.Date 或 Dates.DateTime 類型）;
                                            y_F_Long_Position_I[2] = Base.string("buy");  # 買入或賣出;
                                            y_F_Long_Position_I[3] = x3[i + 1];  # 成交價;
                                            y_F_Long_Position_I[4] = Core.nothing;  # 成交量;
                                            y_F_Long_Position_I[5] = Core.Int64(Index_date_transaction_Long_Position);  # 每兩次對衝成交序號標識;
                                            y_F_Long_Position_I[6] = Core.Int64(i + 1);  # 交易日期的序列號，用於繪圖可視化;
                                            y_F_Long_Position_I[7] = x0[i + 1];  # 交易日（Dates.Date 類型）;
                                            y_F_Long_Position_I[8] = x1[i + 1];  # 當日總成交量（turnover volume）;
                                            y_F_Long_Position_I[9] = x3[i + 1];  # 當日開盤（opening）成交價;
                                            y_F_Long_Position_I[10] = x4[i + 1];  # 當日收盤（closing）成交價;
                                            y_F_Long_Position_I[11] = x5[i + 1];  # 當日最低（low）成交價;
                                            y_F_Long_Position_I[12] = x6[i + 1];  # 當日最高（high）成交價;
                                            y_F_Long_Position_I[13] = Base.missing;  # x2[i + 1];  # 當日總成交金額（turnover amount）;
                                            y_F_Long_Position_I[14] = Base.missing;  # x20[i + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                            y_F_Long_Position_I[15] = Base.missing;  # x21[i + 1];  # 當日每股收益（price earnings）;
                                            y_F_Long_Position_I[16] = Base.missing;  # x22[i + 1];  # 當日每股净值（book value per share）;
                                            Base.push!(y_F_Long_Position, y_F_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                            y_G_Long_Position_I = Core.Float64(-Core.Float64(x3[i + 1]));
                                            Base.push!(y_G, y_G_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易差價利潤;
                                            y_A_Long_Position_I *= Core.Float64(0.0);
                                            y_A_Long_Position_I += Core.Float64(Core.Float64(0.0) - Core.Float64(x3[i + 1]));
                                            # y_A_Long_Position_I = Core.Float64(Core.Float64(0.0) - Core.Float64(x3[i + 1]));  # Core.Float64(x3[j + 1] - x3[i + 1]);
                                            # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                            #     y_A_Long_Position_I = Core.Float64(y_A_Long_Position_I / x3[i + 1]);
                                            # end
                                            # Base.push!(y_A_Long_Position, y_A_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易差價盈虧標示;
                                            y_B_Long_Position_I *= Core.Int64(0);
                                            if Core.Float64(y_A_Long_Position_I) > Core.Float64(0.0)
                                                y_B_Long_Position_I += Core.Int64(+1);
                                            elseif Core.Float64(y_A_Long_Position_I) < Core.Float64(0.0)
                                                y_B_Long_Position_I += Core.Int64(-1);
                                            elseif Core.Float64(y_A_Long_Position_I) === Core.Float64(0.0)
                                                y_B_Long_Position_I += Core.Int64(0);
                                            end
                                            # Base.push!(y_B_Long_Position, y_B_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易間隔日長;
                                            y_C_Long_Position_I *= Core.Int64(0);
                                            y_C_Long_Position_I += Core.Int64(Core.Int64(Base.length(P1_Array)) + Core.Int64(1));
                                            # y_C_Long_Position_I = (+Base.Inf);  # Core.Int64((j + 1) - (i + 1));
                                            # Base.push!(y_C_Long_Position, y_C_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易日成交價振幅平方和;
                                            y_D_Long_Position_I *= Core.Float64(0.0);
                                            y_D_Long_Position_I += Core.Float64(x8[i + 1]);
                                            # y_D_Long_Position_I = Core.Float64(x8[i + 1]);  # Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                            # y_D_Long_Position_I = Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false));  # Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                            # Base.push!(y_D_Long_Position, y_D_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易日成交量（換手率）均值;
                                            y_E_Long_Position_I *= Core.Float64(0.0);
                                            y_E_Long_Position_I += Core.Float64(x1[i + 1]);
                                            # y_E_Long_Position_I = Core.Float64(x1[i + 1]);  # Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                            # Base.push!(y_E_Long_Position, y_E_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            i_2 = Core.Int64(i);  # 記錄伸縮框的對衝 2 位置（j）初始值;
                                            # i += Core.Int64(1);  # 將伸縮框跳躍到 (i + 1) 處的位置;
                                            # i = Core.Int64(i + 1);  # 將伸縮框跳躍到 (i + 1) 處的位置;

                                            # 查找（融資做多 buying long）對衝交易的第二次賣出交易日期時間切面節點;
                                            if Core.Int64(i + 1) <= Core.Int64(Base.length(P1_Array))
                                                for j = Core.Int64(i):Core.Int64(Core.Int64(Base.length(P1_Array)) - Core.Int64(1))

                                                    risk_drawdown_loss_Long_Position = Core.Float64(Core.Float64(P4) + Core.Float64(0.1));  # 回撤比例初值，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                                                    risk_drawdown_loss_Long_Position *= Core.Float64(0.0);
                                                    risk_drawdown_loss_Long_Position += Core.Float64(Core.Float64(x3[j + 1]) / Core.Float64(x3[i + 1]));  # 風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                                                    # risk_drawdown_loss_Long_Position += Core.Float64(Core.Float64(Base.abs(x3[j + 1])) / Core.Float64(Base.abs(x3[i + 1])));  # 風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;

                                                    # 記錄做多模式每個交易日的回撤值序列;
                                                    Base.push!(drawdown_Array_Long_Position, risk_drawdown_loss_Long_Position);  # 使用 push! 函數在數組末尾追加推入新元;

                                                    # 判斷是否超過預設的風險（最大回撤）閾值，若超過閾值，則賣出强制平倉;
                                                    if Core.Float64(risk_drawdown_loss_Long_Position) <= Core.Float64(P4)

                                                        # Index_date_transaction_Long_Position += Core.Int64(1);
                                                        # # Index_date_transaction_Long_Position = Core.Int64(Index_date_transaction_Long_Position + Core.Int64(1));

                                                        # 按規則執行第二次賣出（融資做多 buying long）交易的日期;
                                                        y_F_Long_Position_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                                        y_F_Long_Position_I[1] = x0[j + 1];  # 交易日期;
                                                        y_F_Long_Position_I[2] = Base.string("sell");  # 買入或賣出;
                                                        y_F_Long_Position_I[3] = x3[j + 1];  # 成交價;
                                                        y_F_Long_Position_I[4] = Core.nothing;  # 成交量;
                                                        y_F_Long_Position_I[5] = Core.Int64(Index_date_transaction_Long_Position);  # 每兩次對衝成交序號標識;
                                                        y_F_Long_Position_I[6] = Core.Int64(j + 1);  # 交易日期的序列號，用於繪圖可視化;
                                                        y_F_Long_Position_I[7] = x0[j + 1];  # 交易日（Dates.Date 類型）;
                                                        y_F_Long_Position_I[8] = x1[j + 1];  # 當日總成交量（turnover volume）;
                                                        y_F_Long_Position_I[9] = x3[j + 1];  # 當日開盤（opening）成交價;
                                                        y_F_Long_Position_I[10] = x4[j + 1];  # 當日收盤（closing）成交價;
                                                        y_F_Long_Position_I[11] = x5[j + 1];  # 當日最低（low）成交價;
                                                        y_F_Long_Position_I[12] = x6[j + 1];  # 當日最高（high）成交價;
                                                        y_F_Long_Position_I[13] = Base.missing;  # x2[j + 1];  # 當日總成交金額（turnover amount）;
                                                        y_F_Long_Position_I[14] = Base.missing;  # x20[j + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                                        y_F_Long_Position_I[15] = Base.missing;  # x21[j + 1];  # 當日每股收益（price earnings）;
                                                        y_F_Long_Position_I[16] = Base.missing;  # x22[j + 1];  # 當日每股净值（book value per share）;
                                                        Base.push!(y_F_Long_Position, y_F_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                                        y_G_Long_Position_I = Core.Float64(+Core.Float64(x3[j + 1]));
                                                        Base.push!(y_G, y_G_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;            

                                                        # 每兩次對衝交易差價利潤;
                                                        y_A_Long_Position_I *= Core.Float64(0.0);
                                                        y_A_Long_Position_I += Core.Float64(x3[j + 1] - x3[i + 1]);
                                                        # y_A_Long_Position_I = Core.Float64(x3[j + 1] - x3[i + 1]);
                                                        # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                                        #     y_A_Long_Position_I = Core.Float64(y_A_Long_Position_I / x3[i + 1]);
                                                        # end
                                                        # Base.push!(y_A_Long_Position, y_A_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易盈虧標示;
                                                        y_B_Long_Position_I *= Core.Int64(0);
                                                        if Core.Float64(y_A_Long_Position_I) > Core.Float64(0.0)
                                                            y_B_Long_Position_I += Core.Int64(+1);
                                                        elseif Core.Float64(y_A_Long_Position_I) < Core.Float64(0.0)
                                                            y_B_Long_Position_I += Core.Int64(-1);
                                                        elseif Core.Float64(y_A_Long_Position_I) === Core.Float64(0.0)
                                                            y_B_Long_Position_I += Core.Int64(0);
                                                        end
                                                        # Base.push!(y_B_Long_Position, y_B_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易間隔日長;
                                                        y_C_Long_Position_I *= Core.Int64(0);
                                                        y_C_Long_Position_I += Core.Int64((j + 1) - (i + 1));
                                                        # y_C_Long_Position_I = Core.Int64((j + 1) - (i + 1));
                                                        # Base.push!(y_C_Long_Position, y_C_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易日成交價振幅平方和;
                                                        y_D_Long_Position_I *= Core.Float64(0.0);
                                                        y_D_Long_Position_I += Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                        # y_D_Long_Position_I = Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                        # y_D_Long_Position_I = Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                                        # Base.push!(y_D_Long_Position, y_D_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易日成交量（換手率）均值;
                                                        y_E_Long_Position_I *= Core.Float64(0.0);
                                                        y_E_Long_Position_I += Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                        # y_E_Long_Position_I = Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                        # Base.push!(y_E_Long_Position, y_E_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        i_2 *= Core.Int64(0);  # 將伸縮框的對衝 2 位置（j）位置歸零（起始點）;
                                                        i_2 += Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;
                                                        # i_2 = Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;

                                                        break;  # 終止 for...end 循環;
                                                    end

                                                    # 判斷是否超過預設的風險（最大回撤）閾值，若小於閾值，則執行擇時規則判斷是否做對衝交易的賣出操作;
                                                    if Core.Float64(risk_drawdown_loss_Long_Position) > Core.Float64(P4)

                                                        # 數據序列最後一個交易日，强制平倉;
                                                        if Core.Int64(j + 1) === Core.Int64(Base.length(P1_Array))

                                                            # Index_date_transaction_Long_Position += Core.Int64(1);
                                                            # # Index_date_transaction_Long_Position = Core.Int64(Index_date_transaction_Long_Position + Core.Int64(1));

                                                            # 按規則執行第二次賣出（融資做多 buying long）交易的日期;
                                                            y_F_Long_Position_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                                            y_F_Long_Position_I[1] = x0[j + 1];  # 交易日期;
                                                            y_F_Long_Position_I[2] = Base.string("sell");  # 買入或賣出;
                                                            y_F_Long_Position_I[3] = x3[j + 1];  # 成交價;
                                                            y_F_Long_Position_I[4] = Core.nothing;  # 成交量;
                                                            y_F_Long_Position_I[5] = Core.Int64(Index_date_transaction_Long_Position);  # 每兩次對衝成交序號標識;
                                                            y_F_Long_Position_I[6] = Core.Int64(j + 1);  # 交易日期的序列號，用於繪圖可視化;
                                                            y_F_Long_Position_I[7] = x0[j + 1];  # 交易日（Dates.Date 類型）;
                                                            y_F_Long_Position_I[8] = x1[j + 1];  # 當日總成交量（turnover volume）;
                                                            y_F_Long_Position_I[9] = x3[j + 1];  # 當日開盤（opening）成交價;
                                                            y_F_Long_Position_I[10] = x4[j + 1];  # 當日收盤（closing）成交價;
                                                            y_F_Long_Position_I[11] = x5[j + 1];  # 當日最低（low）成交價;
                                                            y_F_Long_Position_I[12] = x6[j + 1];  # 當日最高（high）成交價;
                                                            y_F_Long_Position_I[13] = Base.missing;  # x2[j + 1];  # 當日總成交金額（turnover amount）;
                                                            y_F_Long_Position_I[14] = Base.missing;  # x20[j + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                                            y_F_Long_Position_I[15] = Base.missing;  # x21[j + 1];  # 當日每股收益（price earnings）;
                                                            y_F_Long_Position_I[16] = Base.missing;  # x22[j + 1];  # 當日每股净值（book value per share）;
                                                            Base.push!(y_F_Long_Position, y_F_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                                            y_G_Long_Position_I = Core.Float64(+Core.Float64(x3[j + 1]));
                                                            Base.push!(y_G, y_G_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;            

                                                            # 每兩次對衝交易差價利潤;
                                                            y_A_Long_Position_I *= Core.Float64(0.0);
                                                            y_A_Long_Position_I += Core.Float64(x3[j + 1] - x3[i + 1]);
                                                            # y_A_Long_Position_I = Core.Float64(x3[j + 1] - x3[i + 1]);
                                                            # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                                            #     y_A_Long_Position_I = Core.Float64(y_A_Long_Position_I / x3[i + 1]);
                                                            # end
                                                            # Base.push!(y_A_Long_Position, y_A_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易盈虧標示;
                                                            y_B_Long_Position_I *= Core.Int64(0);
                                                            if Core.Float64(y_A_Long_Position_I) > Core.Float64(0.0)
                                                                y_B_Long_Position_I += Core.Int64(+1);
                                                            elseif Core.Float64(y_A_Long_Position_I) < Core.Float64(0.0)
                                                                y_B_Long_Position_I += Core.Int64(-1);
                                                            elseif Core.Float64(y_A_Long_Position_I) === Core.Float64(0.0)
                                                                y_B_Long_Position_I += Core.Int64(0);
                                                            end
                                                            # Base.push!(y_B_Long_Position, y_B_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易間隔日長;
                                                            y_C_Long_Position_I *= Core.Int64(0);
                                                            y_C_Long_Position_I += Core.Int64((j + 1) - (i + 1));
                                                            # y_C_Long_Position_I = Core.Int64((j + 1) - (i + 1));
                                                            # Base.push!(y_C_Long_Position, y_C_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易日成交價振幅平方和;
                                                            y_D_Long_Position_I *= Core.Float64(0.0);
                                                            y_D_Long_Position_I += Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                            # y_D_Long_Position_I = Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                            # y_D_Long_Position_I = Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                                            # Base.push!(y_D_Long_Position, y_D_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易日成交量（換手率）均值;
                                                            y_E_Long_Position_I *= Core.Float64(0.0);
                                                            y_E_Long_Position_I += Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                            # y_E_Long_Position_I = Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                            # Base.push!(y_E_Long_Position, y_E_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            i_2 *= Core.Int64(0);  # 將伸縮框的對衝 2 位置（j）位置歸零（起始點）;
                                                            i_2 += Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;
                                                            # i_2 = Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;

                                                            break;  # 終止 for...end 循環;
                                                        end

                                                        # 做多模式下，最後一個交易日之前的所有交易日，依次按照擇時規則，判斷是否執行對衝交易的賣出交易;
                                                        if Core.Int64(j + 1) < Core.Int64(Base.length(P1_Array))

                                                            x_P1_2 = P1_Array[j];
                                                            # println(x_P1_2);

                                                            if (!(Base.ismissing(x_P1_2) || Base.isnothing(x_P1_2)))

                                                                # 判斷是否進行第二次賣出（融資做多 buying long）交易;
                                                                if (x_P1 >= P3) && (x_P1_2 < P3)

                                                                    # Index_date_transaction_Long_Position += Core.Int64(1);
                                                                    # # Index_date_transaction_Long_Position = Core.Int64(Index_date_transaction_Long_Position + Core.Int64(1));

                                                                    # 按規則執行第二次賣出（融資做多 buying long）交易的日期;
                                                                    y_F_Long_Position_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                                                    y_F_Long_Position_I[1] = x0[j + 1];  # 交易日期;
                                                                    y_F_Long_Position_I[2] = Base.string("sell");  # 買入或賣出;
                                                                    y_F_Long_Position_I[3] = x3[j + 1];  # 成交價;
                                                                    y_F_Long_Position_I[4] = Core.nothing;  # 成交量;
                                                                    y_F_Long_Position_I[5] = Core.Int64(Index_date_transaction_Long_Position);  # 每兩次對衝成交序號標識;
                                                                    y_F_Long_Position_I[6] = Core.Int64(j + 1);  # 交易日期的序列號，用於繪圖可視化;
                                                                    y_F_Long_Position_I[7] = x0[j + 1];  # 交易日（Dates.Date 類型）;
                                                                    y_F_Long_Position_I[8] = x1[j + 1];  # 當日總成交量（turnover volume）;
                                                                    y_F_Long_Position_I[9] = x3[j + 1];  # 當日開盤（opening）成交價;
                                                                    y_F_Long_Position_I[10] = x4[j + 1];  # 當日收盤（closing）成交價;
                                                                    y_F_Long_Position_I[11] = x5[j + 1];  # 當日最低（low）成交價;
                                                                    y_F_Long_Position_I[12] = x6[j + 1];  # 當日最高（high）成交價;
                                                                    y_F_Long_Position_I[13] = Base.missing;  # x2[j + 1];  # 當日總成交金額（turnover amount）;
                                                                    y_F_Long_Position_I[14] = Base.missing;  # x20[j + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                                                    y_F_Long_Position_I[15] = Base.missing;  # x21[j + 1];  # 當日每股收益（price earnings）;
                                                                    y_F_Long_Position_I[16] = Base.missing;  # x22[j + 1];  # 當日每股净值（book value per share）;
                                                                    Base.push!(y_F_Long_Position, y_F_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                                                    y_G_Long_Position_I = Core.Float64(+Core.Float64(x3[j + 1]));
                                                                    Base.push!(y_G, y_G_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;            

                                                                    # 每兩次對衝交易差價利潤;
                                                                    y_A_Long_Position_I *= Core.Float64(0.0);
                                                                    y_A_Long_Position_I += Core.Float64(x3[j + 1] - x3[i + 1]);
                                                                    # y_A_Long_Position_I = Core.Float64(x3[j + 1] - x3[i + 1]);
                                                                    # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                                                    #     y_A_Long_Position_I = Core.Float64(y_A_Long_Position_I / x3[i + 1]);
                                                                    # end
                                                                    # Base.push!(y_A_Long_Position, y_A_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易盈虧標示;
                                                                    y_B_Long_Position_I *= Core.Int64(0);
                                                                    if Core.Float64(y_A_Long_Position_I) > Core.Float64(0.0)
                                                                        y_B_Long_Position_I += Core.Int64(+1);
                                                                    elseif Core.Float64(y_A_Long_Position_I) < Core.Float64(0.0)
                                                                        y_B_Long_Position_I += Core.Int64(-1);
                                                                    elseif Core.Float64(y_A_Long_Position_I) === Core.Float64(0.0)
                                                                        y_B_Long_Position_I += Core.Int64(0);
                                                                    end
                                                                    # Base.push!(y_B_Long_Position, y_B_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易間隔日長;
                                                                    y_C_Long_Position_I *= Core.Int64(0);
                                                                    y_C_Long_Position_I += Core.Int64((j + 1) - (i + 1));
                                                                    # y_C_Long_Position_I = Core.Int64((j + 1) - (i + 1));
                                                                    # Base.push!(y_C_Long_Position, y_C_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易日成交價振幅平方和;
                                                                    y_D_Long_Position_I *= Core.Float64(0.0);
                                                                    y_D_Long_Position_I += Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                                    # y_D_Long_Position_I = Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                                    # y_D_Long_Position_I = Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                                                    # Base.push!(y_D_Long_Position, y_D_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易日成交量（換手率）均值;
                                                                    y_E_Long_Position_I *= Core.Float64(0.0);
                                                                    y_E_Long_Position_I += Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                                    # y_E_Long_Position_I = Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                                    # Base.push!(y_E_Long_Position, y_E_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    i_2 *= Core.Int64(0);  # 將伸縮框的對衝 2 位置（j）位置歸零（起始點）;
                                                                    i_2 += Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;
                                                                    # i_2 = Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;

                                                                    break;  # 終止 for...end 循環;
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            # 做多（Long Position）記錄;
                                            Base.push!(y_A_Long_Position, y_A_Long_Position_I);  # 使用 push! 函數在數組末尾追加推入新元;
                                            Base.push!(y_B_Long_Position, y_B_Long_Position_I);
                                            Base.push!(y_C_Long_Position, y_C_Long_Position_I);
                                            Base.push!(y_D_Long_Position, y_D_Long_Position_I);
                                            Base.push!(y_E_Long_Position, y_E_Long_Position_I);
                                            # 記錄做多模式本輪對衝交易的回撤值序列;
                                            if Base.typeof(drawdown_Array_Long_Position) <: Core.Array && Core.Int64(Base.length(drawdown_Array_Long_Position)) >= Core.Int64(0)
                                                Base.push!(y_H_Long_Position, drawdown_Array_Long_Position);
                                            end

                                            i *= Core.Int64(0);  # 將伸縮框的位置歸零（起始點）;
                                            i += Core.Int64(i_2);  # 將伸縮框跳躍到(j) 或 (j + 1) 處的位置;
                                        end
                                    end
                                end

                                # 依照選股規則挑選出的股票，計算（融券做空 short selling）交易利潤;
                                if investment_method === "Long_Position_and_Short_Selling" || investment_method === "Short_Selling"

                                    # 做空（Short Selling）記錄;
                                    y_A_Short_Selling_I = Core.Float64(0.0);  # 每兩次對衝交易差價利潤初值;
                                    y_B_Short_Selling_I = Core.Int64(0);  # 每兩次對衝交易差價盈虧標示初值;
                                    y_C_Short_Selling_I = Core.Int64(0);  #  (+Base.Inf);  # 每兩次對衝交易間隔日長初值;
                                    y_D_Short_Selling_I = Core.Float64(0.0);  # 每兩次對衝交易日成交價振幅平方和初值;
                                    y_E_Short_Selling_I = Core.Float64(0.0);  # 每兩次對衝交易日成交量（換手率）均值初值;
                                    # 判斷是否進行（融券做空 short selling）對衝交易的第一次賣出交易;
                                    if (x_P1_previous >= P3) && (x_P1 < P3)

                                        if Core.Int64(i + 1) <= Core.Int64(Base.length(P1_Array))

                                            # 記錄每個交易日的回撤值序列;
                                            drawdown_Array_Short_Selling = Core.Array{Core.Float64, 1}();  # 記錄做空模式每個交易日的回撤值序列;

                                            Index_date_transaction_Short_Selling += Core.Int64(1);
                                            # Index_date_transaction_Short_Selling = Core.Int64(Index_date_transaction_Short_Selling + Core.Int64(1));

                                            # 按規則執行第一次賣出（融券做空 short selling）交易的日期;
                                            y_F_Short_Selling_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                            y_F_Short_Selling_I[1] = x0[i + 1];  # 交易日期;
                                            y_F_Short_Selling_I[2] = Base.string("sell");  # 買入或賣出;
                                            y_F_Short_Selling_I[3] = x3[i + 1];  # 成交價;
                                            y_F_Short_Selling_I[4] = Core.nothing;  # 成交量;
                                            y_F_Short_Selling_I[5] = Core.Int64(Index_date_transaction_Short_Selling);  # 每兩次對衝成交序號標識;
                                            y_F_Short_Selling_I[6] = Core.Int64(i + 1);  # 交易日期的序列號，用於繪圖可視化;
                                            y_F_Short_Selling_I[7] = x0[i + 1];  # 交易日（Dates.Date 類型）;
                                            y_F_Short_Selling_I[8] = x1[i + 1];  # 當日總成交量（turnover volume）;
                                            y_F_Short_Selling_I[9] = x3[i + 1];  # 當日開盤（opening）成交價;
                                            y_F_Short_Selling_I[10] = x4[i + 1];  # 當日收盤（closing）成交價;
                                            y_F_Short_Selling_I[11] = x5[i + 1];  # 當日最低（low）成交價;
                                            y_F_Short_Selling_I[12] = x6[i + 1];  # 當日最高（high）成交價;
                                            y_F_Short_Selling_I[13] = Base.missing;  # x2[i + 1];  # 當日總成交金額（turnover amount）;
                                            y_F_Short_Selling_I[14] = Base.missing;  # x20[i + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                            y_F_Short_Selling_I[15] = Base.missing;  # x21[i + 1];  # 當日每股收益（price earnings）;
                                            y_F_Short_Selling_I[16] = Base.missing;  # x22[i + 1];  # 當日每股净值（book value per share）;
                                            Base.push!(y_F_Short_Selling, y_F_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                            y_G_Short_Selling_I = Core.Float64(+Core.Float64(x3[i + 1]));
                                            Base.push!(y_G, y_G_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易差價利潤;
                                            y_A_Short_Selling_I *= Core.Float64(0.0);
                                            y_A_Short_Selling_I += Core.Float64(Core.Float64(0.0) - Core.Float64(x3[i + 1]));
                                            # y_A_Short_Selling_I = Core.Float64(Core.Float64(0.0) - Core.Float64(x3[i + 1]));  # Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                            # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                            #     y_A_Short_Selling_I = Core.Float64(y_A_Short_Selling_I / x3[i + 1]);
                                            # end
                                            # Base.push!(y_A_Short_Selling, y_A_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝差價盈虧標示;
                                            y_B_Short_Selling_I *= Core.Int64(0);
                                            if Core.Float64(y_A_Short_Selling_I) > Core.Float64(0.0)
                                                y_B_Short_Selling_I += Core.Int64(+1);
                                            elseif Core.Float64(y_A_Short_Selling_I) < Core.Float64(0.0)
                                                y_B_Short_Selling_I += Core.Int64(-1);
                                            elseif Core.Float64(y_A_Short_Selling_I) === Core.Float64(0.0)
                                                y_B_Short_Selling_I += Core.Int64(0);
                                            end
                                            # Base.push!(y_B_Short_Selling, y_B_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易間隔日長;
                                            y_C_Short_Selling_I *= Core.Int64(0);
                                            y_C_Short_Selling_I += Core.Int64(Core.Int64(Base.length(P1_Array)) + Core.Int64(1));
                                            # y_C_Short_Selling_I = (+Base.Inf);  # Core.Int64((j + 1) - (i + 1));
                                            # Base.push!(y_C_Short_Selling, y_C_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易日成交價振幅平方和;
                                            y_D_Short_Selling_I *= Core.Float64(0.0);
                                            y_D_Short_Selling_I += Core.Float64(x8[i + 1]);
                                            # y_D_Short_Selling_I = Core.Float64(x7[i + 1]);  # Core.Float64(Base.sqrt(Core.Float64(x7[i + 1])^2 + Core.Float64(x7[j + 1])^2));
                                            # y_D_Short_Selling_I = Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false));  # Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                            # Base.push!(y_D_Short_Selling, y_D_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            # 每兩次對衝交易日成交量（換手率）均值;
                                            y_E_Short_Selling_I *= Core.Float64(0.0);
                                            y_E_Short_Selling_I += Core.Float64(x1[i + 1]);
                                            # y_E_Short_Selling_I = Core.Float64(x1[i + 1]);  # Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                            # Base.push!(y_E_Short_Selling, y_E_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                            i_2 = Core.Int64(i);  # 記錄伸縮框的對衝 2 位置（j）初始值;
                                            # i += Core.Int64(1);  # 將伸縮框跳躍到 (i + 1) 處的位置;
                                            # i = Core.Int64(i + 1);  # 將伸縮框跳躍到 (i + 1) 處的位置;

                                            # 查找（融券做空 short selling）對衝交易的第二次買入交易日期時間切面節點;
                                            if Core.Int64(i + 1) <= Core.Int64(Base.length(P1_Array))
                                                for j = Core.Int64(i):Core.Int64(Core.Int64(Base.length(P1_Array)) - Core.Int64(1))

                                                    risk_drawdown_loss_Short_Selling = Core.Float64(Core.Float64(P4) + Core.Float64(0.1));  # 回撤比例初值，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                                                    risk_drawdown_loss_Short_Selling *= Core.Float64(0.0);
                                                    risk_drawdown_loss_Short_Selling += Core.Float64(Core.Float64(1.0) + Core.Float64(Core.Float64(Core.Float64(x3[i + 1]) - Core.Float64(x3[j + 1])) / Core.Float64(x3[i + 1])));  # 風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                                                    # risk_drawdown_loss_Short_Selling += Core.Float64(Core.Float64(1.0) + Core.Float64(Core.Float64(Core.Float64(Base.abs(Core.Float64(x3[i + 1]))) - Core.Float64(Base.abs(Core.Float64(x3[j + 1])))) / Core.Float64(Base.abs(Core.Float64(x3[i + 1])))));  # 風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;

                                                    # 記錄做空模式每個交易日的回撤值序列;
                                                    Base.push!(drawdown_Array_Short_Selling, risk_drawdown_loss_Short_Selling);  # 使用 push! 函數在數組末尾追加推入新元;

                                                    # 判斷是否超過預設的風險（最大回撤）閾值，若超過閾值，則買入强制平倉;
                                                    if Core.Float64(risk_drawdown_loss_Short_Selling) <= Core.Float64(P4)

                                                        # Index_date_transaction_Short_Selling += Core.Int64(1);
                                                        # # Index_date_transaction_Short_Selling = Core.Int64(Index_date_transaction_Short_Selling + Core.Int64(1));

                                                        # 按規則執行第二次買入（融資做多 buying long）的日期;
                                                        y_F_Short_Selling_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                                        y_F_Short_Selling_I[1] = x0[j + 1];  # 交易日期;
                                                        y_F_Short_Selling_I[2] = Base.string("buy");  # 買入或賣出;
                                                        y_F_Short_Selling_I[3] = x3[j + 1];  # 成交價;
                                                        y_F_Short_Selling_I[4] = Core.nothing;  # 成交量;
                                                        y_F_Short_Selling_I[5] = Core.Int64(Index_date_transaction_Short_Selling);  # 每兩次對衝成交序號標識;
                                                        y_F_Short_Selling_I[6] = Core.Int64(j + 1);  # 交易日期的序列號，用於繪圖可視化;
                                                        y_F_Short_Selling_I[7] = x0[j + 1];  # 交易日（Dates.Date 類型）;
                                                        y_F_Short_Selling_I[8] = x1[j + 1];  # 當日總成交量（turnover volume）;
                                                        y_F_Short_Selling_I[9] = x3[j + 1];  # 當日開盤（opening）成交價;
                                                        y_F_Short_Selling_I[10] = x4[j + 1];  # 當日收盤（closing）成交價;
                                                        y_F_Short_Selling_I[11] = x5[j + 1];  # 當日最低（low）成交價;
                                                        y_F_Short_Selling_I[12] = x6[j + 1];  # 當日最高（high）成交價;
                                                        y_F_Short_Selling_I[13] = Base.missing;  # x2[j + 1];  # 當日總成交金額（turnover amount）;
                                                        y_F_Short_Selling_I[14] = Base.missing;  # x20[j + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                                        y_F_Short_Selling_I[15] = Base.missing;  # x21[j + 1];  # 當日每股收益（price earnings）;
                                                        y_F_Short_Selling_I[16] = Base.missing;  # x22[j + 1];  # 當日每股净值（book value per share）;
                                                        Base.push!(y_F_Short_Selling, y_F_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                                        y_G_Short_Selling_I = Core.Float64(-Core.Float64(x3[j + 1]));
                                                        Base.push!(y_G, y_G_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易差價利潤;
                                                        y_A_Short_Selling_I *= Core.Float64(0.0);
                                                        y_A_Short_Selling_I += Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                                        # y_A_Short_Selling_I = Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                                        # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                                        #     y_A_Short_Selling_I = Core.Float64(y_A_Short_Selling_I / x3[i + 1]);
                                                        # end
                                                        # Base.push!(y_A_Short_Selling, y_A_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易盈虧標示;
                                                        y_B_Short_Selling_I *= Core.Int64(0);
                                                        if Core.Float64(y_A_Short_Selling_I) > Core.Float64(0.0)
                                                            y_B_Short_Selling_I += Core.Int64(+1);
                                                        elseif Core.Float64(y_A_Short_Selling_I) < Core.Float64(0.0)
                                                            y_B_Short_Selling_I += Core.Int64(-1);
                                                        elseif Core.Float64(y_A_Short_Selling_I) === Core.Float64(0.0)
                                                            y_B_Short_Selling_I += Core.Int64(0);
                                                        end
                                                        # Base.push!(y_B_Short_Selling, y_B_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易間隔日長;
                                                        y_C_Short_Selling_I *= Core.Int64(0);
                                                        y_C_Short_Selling_I += Core.Int64((j + 1) - (i + 1));
                                                        # y_C_Short_Selling_I = Core.Int64((j + 1) - (i + 1));
                                                        # Base.push!(y_C_Short_Selling, y_C_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易日成交價振幅平方和;
                                                        y_D_Short_Selling_I *= Core.Float64(0.0);
                                                        y_D_Short_Selling_I += Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                        # y_D_Short_Selling_I = Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                        # y_D_Short_Selling_I = Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                                        # Base.push!(y_D_Short_Selling, y_D_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        # 每兩次對衝交易日成交量（換手率）均值;
                                                        y_E_Short_Selling_I *= Core.Float64(0.0);
                                                        y_E_Short_Selling_I += Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                        # y_E_Short_Selling_I = Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                        # Base.push!(y_E_Short_Selling, y_E_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                        i_2 *= Core.Int64(0);  # 將伸縮框的對衝 2 位置（j）位置歸零（起始點）;
                                                        i_2 += Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;
                                                        # i_2 = Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;

                                                        break;  # 終止 for...end 循環;
                                                    end

                                                    # 判斷是否超過預設的風險（最大回撤）閾值，若小於閾值，則執行擇時規則判斷是否做對衝交易的買入操作;
                                                    if Core.Float64(risk_drawdown_loss_Short_Selling) > Core.Float64(P4)

                                                        # 數據序列最後一個交易日，强制平倉;
                                                        if Core.Int64(j + 1) === Core.Int64(Base.length(P1_Array))

                                                            # Index_date_transaction_Short_Selling += Core.Int64(1);
                                                            # # Index_date_transaction_Short_Selling = Core.Int64(Index_date_transaction_Short_Selling + Core.Int64(1));

                                                            # 按規則執行第二次買入（融資做多 buying long）的日期;
                                                            y_F_Short_Selling_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                                            y_F_Short_Selling_I[1] = x0[j + 1];  # 交易日期;
                                                            y_F_Short_Selling_I[2] = Base.string("buy");  # 買入或賣出;
                                                            y_F_Short_Selling_I[3] = x3[j + 1];  # 成交價;
                                                            y_F_Short_Selling_I[4] = Core.nothing;  # 成交量;
                                                            y_F_Short_Selling_I[5] = Core.Int64(Index_date_transaction_Short_Selling);  # 每兩次對衝成交序號標識;
                                                            y_F_Short_Selling_I[6] = Core.Int64(j + 1);  # 交易日期的序列號，用於繪圖可視化;
                                                            y_F_Short_Selling_I[7] = x0[j + 1];  # 交易日（Dates.Date 類型）;
                                                            y_F_Short_Selling_I[8] = x1[j + 1];  # 當日總成交量（turnover volume）;
                                                            y_F_Short_Selling_I[9] = x3[j + 1];  # 當日開盤（opening）成交價;
                                                            y_F_Short_Selling_I[10] = x4[j + 1];  # 當日收盤（closing）成交價;
                                                            y_F_Short_Selling_I[11] = x5[j + 1];  # 當日最低（low）成交價;
                                                            y_F_Short_Selling_I[12] = x6[j + 1];  # 當日最高（high）成交價;
                                                            y_F_Short_Selling_I[13] = Base.missing;  # x2[j + 1];  # 當日總成交金額（turnover amount）;
                                                            y_F_Short_Selling_I[14] = Base.missing;  # x20[j + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                                            y_F_Short_Selling_I[15] = Base.missing;  # x21[j + 1];  # 當日每股收益（price earnings）;
                                                            y_F_Short_Selling_I[16] = Base.missing;  # x22[j + 1];  # 當日每股净值（book value per share）;
                                                            Base.push!(y_F_Short_Selling, y_F_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                                            y_G_Short_Selling_I = Core.Float64(-Core.Float64(x3[j + 1]));
                                                            Base.push!(y_G, y_G_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易差價利潤;
                                                            y_A_Short_Selling_I *= Core.Float64(0.0);
                                                            y_A_Short_Selling_I += Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                                            # y_A_Short_Selling_I = Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                                            # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                                            #     y_A_Short_Selling_I = Core.Float64(y_A_Short_Selling_I / x3[i + 1]);
                                                            # end
                                                            # Base.push!(y_A_Short_Selling, y_A_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易盈虧標示;
                                                            y_B_Short_Selling_I *= Core.Int64(0);
                                                            if Core.Float64(y_A_Short_Selling_I) > Core.Float64(0.0)
                                                                y_B_Short_Selling_I += Core.Int64(+1);
                                                            elseif Core.Float64(y_A_Short_Selling_I) < Core.Float64(0.0)
                                                                y_B_Short_Selling_I += Core.Int64(-1);
                                                            elseif Core.Float64(y_A_Short_Selling_I) === Core.Float64(0.0)
                                                                y_B_Short_Selling_I += Core.Int64(0);
                                                            end
                                                            # Base.push!(y_B_Short_Selling, y_B_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易間隔日長;
                                                            y_C_Short_Selling_I *= Core.Int64(0);
                                                            y_C_Short_Selling_I += Core.Int64((j + 1) - (i + 1));
                                                            # y_C_Short_Selling_I = Core.Int64((j + 1) - (i + 1));
                                                            # Base.push!(y_C_Short_Selling, y_C_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易日成交價振幅平方和;
                                                            y_D_Short_Selling_I *= Core.Float64(0.0);
                                                            y_D_Short_Selling_I += Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                            # y_D_Short_Selling_I = Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                            # y_D_Short_Selling_I = Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                                            # Base.push!(y_D_Short_Selling, y_D_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            # 每兩次對衝交易日成交量（換手率）均值;
                                                            y_E_Short_Selling_I *= Core.Float64(0.0);
                                                            y_E_Short_Selling_I += Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                            # y_E_Short_Selling_I = Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                            # Base.push!(y_E_Short_Selling, y_E_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                            i_2 *= Core.Int64(0);  # 將伸縮框的對衝 2 位置（j）位置歸零（起始點）;
                                                            i_2 += Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;
                                                            # i_2 = Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;

                                                            break;  # 終止 for...end 循環;
                                                        end

                                                        # 做空模式下，最後一個交易日之前的所有交易日，依次按照擇時規則，判斷是否執行對衝交易的買入交易;
                                                        if Core.Int64(j + 1) < Core.Int64(Base.length(P1_Array))

                                                            x_P1_2 = P1_Array[j];
                                                            # println(x_P1_2);

                                                            if (!(Base.ismissing(x_P1_2) || Base.isnothing(x_P1_2)))

                                                                # 判斷是否進行第二次買入（融券做空 short selling）交易;
                                                                if (x_P1 <= P2) && (x_P1_2 > P2)

                                                                    # Index_date_transaction_Short_Selling += Core.Int64(1);
                                                                    # # Index_date_transaction_Short_Selling = Core.Int64(Index_date_transaction_Short_Selling + Core.Int64(1));

                                                                    # 按規則執行第二次買入（融資做多 buying long）的日期;
                                                                    y_F_Short_Selling_I = Core.Array{Core.Union{Dates.Date, Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Bool, Core.Nothing, Base.Missing}, 1}(Core.undef, 16);
                                                                    y_F_Short_Selling_I[1] = x0[j + 1];  # 交易日期;
                                                                    y_F_Short_Selling_I[2] = Base.string("buy");  # 買入或賣出;
                                                                    y_F_Short_Selling_I[3] = x3[j + 1];  # 成交價;
                                                                    y_F_Short_Selling_I[4] = Core.nothing;  # 成交量;
                                                                    y_F_Short_Selling_I[5] = Core.Int64(Index_date_transaction_Short_Selling);  # 每兩次對衝成交序號標識;
                                                                    y_F_Short_Selling_I[6] = Core.Int64(j + 1);  # 交易日期的序列號，用於繪圖可視化;
                                                                    y_F_Short_Selling_I[7] = x0[j + 1];  # 交易日（Dates.Date 類型）;
                                                                    y_F_Short_Selling_I[8] = x1[j + 1];  # 當日總成交量（turnover volume）;
                                                                    y_F_Short_Selling_I[9] = x3[j + 1];  # 當日開盤（opening）成交價;
                                                                    y_F_Short_Selling_I[10] = x4[j + 1];  # 當日收盤（closing）成交價;
                                                                    y_F_Short_Selling_I[11] = x5[j + 1];  # 當日最低（low）成交價;
                                                                    y_F_Short_Selling_I[12] = x6[j + 1];  # 當日最高（high）成交價;
                                                                    y_F_Short_Selling_I[13] = Base.missing;  # x2[j + 1];  # 當日總成交金額（turnover amount）;
                                                                    y_F_Short_Selling_I[14] = Base.missing;  # x20[j + 1];  # 當日成交量（turnover volume）換手率（turnover rate）;
                                                                    y_F_Short_Selling_I[15] = Base.missing;  # x21[j + 1];  # 當日每股收益（price earnings）;
                                                                    y_F_Short_Selling_I[16] = Base.missing;  # x22[j + 1];  # 當日每股净值（book value per share）;
                                                                    Base.push!(y_F_Short_Selling, y_F_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling）;
                                                                    y_G_Short_Selling_I = Core.Float64(-Core.Float64(x3[j + 1]));
                                                                    Base.push!(y_G, y_G_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易差價利潤;
                                                                    y_A_Short_Selling_I *= Core.Float64(0.0);
                                                                    y_A_Short_Selling_I += Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                                                    # y_A_Short_Selling_I = Core.Float64(-(x3[j + 1] - x3[i + 1]));
                                                                    # if Core.Float64(x3[i + 1]) !== Core.Float64(0.0)
                                                                    #     y_A_Short_Selling_I = Core.Float64(y_A_Short_Selling_I / x3[i + 1]);
                                                                    # end
                                                                    # Base.push!(y_A_Short_Selling, y_A_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易盈虧標示;
                                                                    y_B_Short_Selling_I *= Core.Int64(0);
                                                                    if Core.Float64(y_A_Short_Selling_I) > Core.Float64(0.0)
                                                                        y_B_Short_Selling_I += Core.Int64(+1);
                                                                    elseif Core.Float64(y_A_Short_Selling_I) < Core.Float64(0.0)
                                                                        y_B_Short_Selling_I += Core.Int64(-1);
                                                                    elseif Core.Float64(y_A_Short_Selling_I) === Core.Float64(0.0)
                                                                        y_B_Short_Selling_I += Core.Int64(0);
                                                                    end
                                                                    # Base.push!(y_B_Short_Selling, y_B_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易間隔日長;
                                                                    y_C_Short_Selling_I *= Core.Int64(0);
                                                                    y_C_Short_Selling_I += Core.Int64((j + 1) - (i + 1));
                                                                    # y_C_Short_Selling_I = Core.Int64((j + 1) - (i + 1));
                                                                    # Base.push!(y_C_Short_Selling, y_C_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易日成交價振幅平方和;
                                                                    y_D_Short_Selling_I *= Core.Float64(0.0);
                                                                    y_D_Short_Selling_I += Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                                    # y_D_Short_Selling_I = Core.Float64(Base.sqrt(Core.Float64(x8[i + 1])^2 + Core.Float64(x8[j + 1])^2));
                                                                    # y_D_Short_Selling_I = Core.Float64(Base.sqrt(Core.Float64(Statistics.std([x3[i + 1], x4[i + 1], x5[i + 1], x6[i + 1]]; corrected=false))^2 + Core.Float64(Statistics.std([x3[j + 1], x4[j + 1], x5[j + 1], x6[j + 1]]; corrected=false))^2));
                                                                    # Base.push!(y_D_Short_Selling, y_D_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    # 每兩次對衝交易日成交量（換手率）均值;
                                                                    y_E_Short_Selling_I *= Core.Float64(0.0);
                                                                    y_E_Short_Selling_I += Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                                    # y_E_Short_Selling_I = Core.Float64(Core.Float64(Core.Float64(x1[i + 1]) + Core.Float64(x1[j + 1])) / 2);
                                                                    # Base.push!(y_E_Short_Selling, y_E_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;

                                                                    i_2 *= Core.Int64(0);  # 將伸縮框的對衝 2 位置（j）位置歸零（起始點）;
                                                                    i_2 += Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;
                                                                    # i_2 = Core.Int64(j);  # 記錄伸縮框的對衝 2 位置（j）跳躍到 (j) 處的位置;

                                                                    break;  # 終止 for...end 循環;
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                            # 做空（Short Selling）記錄;
                                            Base.push!(y_A_Short_Selling, y_A_Short_Selling_I);  # 使用 push! 函數在數組末尾追加推入新元;
                                            Base.push!(y_B_Short_Selling, y_B_Short_Selling_I);
                                            Base.push!(y_C_Short_Selling, y_C_Short_Selling_I);
                                            Base.push!(y_D_Short_Selling, y_D_Short_Selling_I);
                                            Base.push!(y_E_Short_Selling, y_E_Short_Selling_I);
                                            # 記錄做空模式本輪對衝交易的回撤值序列;
                                            if Base.typeof(drawdown_Array_Short_Selling) <: Core.Array && Core.Int64(Base.length(drawdown_Array_Short_Selling)) >= Core.Int64(0)
                                                Base.push!(y_H_Short_Selling, drawdown_Array_Short_Selling);
                                            end

                                            i *= Core.Int64(0);  # 將伸縮框的位置歸零（起始點）;
                                            i += Core.Int64(i_2);  # 將伸縮框跳躍到(j) 或 (j + 1) 處的位置;
                                        end
                                    end
                                end
                            end
                        end
                    end
                    i = Core.nothing;
                end
                # println(y_G);
                # println(y_A_Long_Position);
                # println(y_B_Long_Position);
                # println(y_C_Long_Position);
                # println(y_D_Long_Position);
                # println(y_E_Long_Position);
                # println(y_F_Long_Position);
                # println(y_H_Long_Position);
                # println(y_A_Short_Selling);
                # println(y_B_Short_Selling);
                # println(y_C_Short_Selling);
                # println(y_D_Short_Selling);
                # println(y_E_Short_Selling);
                # println(y_F_Short_Selling);
                # println(y_H_Short_Selling);


                # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
                # 做多（Long Position）記錄;
                y_total_Long_Position = Core.nothing;  # Core.Float64(0.0);  # 每兩次對衝交易利潤，纍加總計;
                y_maximum_drawdown_Long_Position = Core.nothing;  # Core.Float64(0.0);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                y_Positive_Long_Position = Core.nothing;  # Core.Float64(0.0);  # 交易規則正利潤纍計;
                y_Negative_Long_Position = Core.nothing;  # Core.Float64(0.0);  # 交易規則負利潤纍計;
                y_P_Positive_Long_Position = Core.nothing;  # Core.Float64(0.0);
                y_P_Negative_Long_Position = Core.nothing;  # Core.Float64(0.0);
                y_amplitude_Long_Position = Core.nothing;  # Core.Float64(0.0);  # amplitude_rate;
                y_turnover_Long_Position = Core.nothing;  # Core.Float64(0.0);  # turnover_volume; turnover_rate;
                y_date_transaction_between_Long_Position = Core.nothing;  # Core.Float64(0.0);  # Between two date_transaction;
                y_Long_Position_profit = Core.nothing;  # Core.Float64(0.0);  # 優化目標變量，利潤 × 權重;
                y_Long_Position_loss = Core.nothing;  # Core.Float64(0.0);  # 優化目標變量，損失 × 權重;
                if investment_method === "Long_Position_and_Short_Selling" || investment_method === "Long_Position"
                    # println(y_A_Long_Position);
                    # y_total_Long_Position = Core.Float64(0.0);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                    if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0)
                        y_total_Long_Position = Core.Float64(Base.sum([Core.Float64(y_A_Long_Position[i]) for i in 1:Base.length(y_A_Long_Position)]));  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                    end

                    # println(y_maximum_drawdown_Long_Position);
                    # y_maximum_drawdown_Long_Position = Core.Float64(0.0);  # 兩次對衝交易之間的最大回撤值，纍加總計;
                    if Core.Int64(Base.length(y_H_Long_Position)) > Core.Int64(0) && Core.Int64(Base.findmax([(Base.typeof(y_H_Long_Position[i]) <: Core.Array || Base.typeof(y_H_Long_Position[i]) <: Base.Vector) ? Core.Int64(Base.length(y_H_Long_Position[i])) : (-Base.Inf) for i in 1:Base.length(y_H_Long_Position)])[1]) > Core.Int64(0)
                        y_maximum_drawdown_Long_Position = Core.Float64(Base.findmin([if ((Base.typeof(y_H_Long_Position[i]) <: Core.Array || Base.typeof(y_H_Long_Position[i]) <: Base.Vector) && Core.Int64(Base.length(y_H_Long_Position[i])) > Core.Int64(0)) Core.Float64(Base.findmin(y_H_Long_Position[i])[1]) end for i in 1:Base.length(y_H_Long_Position)])[1]);  # 每兩次對衝交易最大回撤損失，取極值統計;
                        # y_maximum_drawdown_Long_Position = Core.Float64(Base.findmin([((Base.typeof(y_H_Long_Position[i]) <: Core.Array || Base.typeof(y_H_Long_Position[i]) <: Base.Vector) && Core.Int64(Base.length(y_H_Long_Position[i])) > Core.Int64(0)) ? Core.Float64(Base.findmin(y_H_Long_Position[i])[1]) : (+Base.Inf) for i in 1:Base.length(y_H_Long_Position)])[1]);  # 每兩次對衝交易最大回撤損失，取極值統計;
                        # y_maximum_drawdown_Long_Position = Core.Float64(Base.findmin([if ((Base.typeof(y_H_Long_Position[i]) <: Core.Array || Base.typeof(y_H_Long_Position[i]) <: Base.Vector) && Core.Int64(Base.length(y_H_Long_Position[i])) > Core.Int64(0)) Core.Float64(Base.findmin(y_H_Long_Position[i])[1]) else (+Base.Inf) end for i in 1:Base.length(y_H_Long_Position)])[1]);  # 每兩次對衝交易最大回撤損失，取極值統計;
                    end

                    # println(y_A_Long_Position);
                    # y_Positive_Long_Position = Core.Float64(0.0);  # 交易規則正利潤纍計;
                    if Core.Int64(Base.length([(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Float64(y_A_Long_Position[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Long_Position)])) > Core.Int64(0)
                        # y_Positive_Long_Position = Core.Float64(Base.sum([if Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0) Core.Float64(y_A_Long_Position[i]) else Core.Float64(0.0) end for i in 1:Base.length(y_A_Long_Position)]));
                        y_Positive_Long_Position = Core.Float64(Base.sum([(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Float64(y_A_Long_Position[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Long_Position)]));
                    end
                    # y_Negative_Long_Position = Core.Float64(0.0);  # 交易規則負利潤纍計;
                    if Core.Int64(Base.length([(Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0)) ? Core.Float64(y_A_Long_Position[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Long_Position)])) > Core.Int64(0)
                        # y_Negative_Long_Position = Core.Float64(Base.sum([if Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0) Core.Float64(y_A_Long_Position[i]) else Core.Float64(0.0) end for i in 1:Base.length(y_A_Long_Position)]));
                        y_Negative_Long_Position = Core.Float64(Base.sum([(Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0)) ? Core.Float64(y_A_Long_Position[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Long_Position)]));
                    end
                    # y_Positive_Long_Position = Core.Float64(0.0);  # 交易規則正利潤纍計;
                    # y_Negative_Long_Position = Core.Float64(0.0);  # 交易規則負利潤纍計;
                    # for i = 1:Base.length(y_A_Long_Position)
                    #     if Core.Int64(y_A_Long_Position[i]) > Core.Float64(0)
                    #         y_Positive_Long_Position = Core.Float64(y_Positive_Long_Position + y_A_Long_Position[i]);
                    #     elseif Core.Int64(y_A_Long_Position[i]) < Core.Float64(0)
                    #         y_Negative_Long_Position = Core.Float64(y_Negative_Long_Position + y_A_Long_Position[i]);
                    #     else
                    #     end
                    # end

                    # println(y_A_Long_Position);
                    # y_P_Positive_Long_Position = Core.Float64(0.0);
                    # y_P_Negative_Long_Position = Core.Float64(0.0);
                    if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0)
                        # y_P_Positive_Long_Position = Core.Float64(Core.Int64(Base.sum([if Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Long_Position)])) / Core.Int64(Base.length(y_A_Long_Position)));
                        y_P_Positive_Long_Position = Core.Float64(Core.Int64(Base.sum([(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Long_Position)])) / Core.Int64(Base.length(y_A_Long_Position)));
                        # y_P_Negative_Long_Position = Core.Float64(Core.Int64(Base.sum([if Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Long_Position)])) / Core.Int64(Base.length(y_A_Long_Position)));
                        y_P_Negative_Long_Position = Core.Float64(Core.Int64(Base.sum([(Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Long_Position)])) / Core.Int64(Base.length(y_A_Long_Position)));
                    end
                    # y_P_Positive_Long_Position = Core.Int64(0);  # Core.Float64(0.0);  # 交易規則正利潤頻率;
                    # y_P_Negative_Long_Position = Core.Int64(0);  # Core.Float64(0.0);  # 交易規則負利潤頻率;
                    # for i = 1:Base.length(y_A_Long_Position)
                    #     if Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)
                    #         y_P_Positive_Long_Position = Core.Int64(Core.Int64(y_P_Positive_Long_Position) + Core.Int64(1));
                    #     elseif Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0)
                    #         y_P_Negative_Long_Position = Core.Int64(Core.Int64(y_P_Negative_Long_Position) + Core.Int64(1));
                    #     else
                    #     end
                    # end
                    # if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0)
                    #     y_P_Positive_Long_Position = Core.Float64(Core.Int64(y_P_Positive_Long_Position) / Core.Int64(Base.length(y_A_Long_Position)));
                    #     y_P_Negative_Long_Position = Core.Float64(Core.Int64(y_P_Negative_Long_Position) / Core.Int64(Base.length(y_A_Long_Position)));
                    # end

                    # # y = Core.Float64(y_Positive_Long_Position * y_P_Positive_Long_Position);  # 每兩次對衝交易正利潤 × 頻率，纍加總計;
                    # # y = Core.Float64(y_Negative_Long_Position * y_P_Negative_Long_Position);  # 每兩次對衝交易負利潤 × 頻率，纍加總計;
                    # y = Core.Float64(y_Positive_Long_Position * y_P_Positive_Long_Position) - Core.Float64(y_Negative_Long_Position * y_P_Negative_Long_Position);

                    # println(y_D_Long_Position);
                    # y_amplitude_Long_Position = Core.Float64(0.0);  # amplitude_rate;
                    if Core.Int64(Base.length(y_D_Long_Position)) > Core.Int64(0)
                        y_amplitude_Long_Position = Core.Float64(Statistics.mean(y_D_Long_Position));  # amplitude_rate;
                    end

                    # println(y_E_Long_Position);
                    # y_turnover_Long_Position = Core.Float64(0.0);  # turnover_volume; turnover_rate;
                    if Core.Int64(Base.length(y_E_Long_Position)) > Core.Int64(0)
                        y_turnover_Long_Position = Core.Float64(Statistics.mean(y_E_Long_Position));  # turnover_volume; turnover_rate;
                    end

                    # println(y_C_Long_Position);
                    # y_date_transaction_between_Long_Position = Core.Float64(0.0);  # Between two date_transaction;
                    if Core.Int64(Base.length(y_C_Long_Position)) > Core.Int64(0)
                        y_date_transaction_between_Long_Position = Core.Float64(Statistics.mean(y_C_Long_Position));  # Between two date_transaction;
                    end

                    weight_Long_Position = Core.Array{Core.Float64, 1}();
                    # println(y_A_Long_Position);
                    if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0)
                        if (!(Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position))) && (!(Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position)))
                            weight_Long_Position = [(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Long_Position) : Core.Float64(y_P_Negative_Long_Position) for i in 1:Base.length(y_A_Long_Position)];
                            # if Core.Float64(y_P_Positive_Long_Position) > Core.Float64(0.0) && Core.Float64(y_P_Negative_Long_Position) > Core.Float64(0.0)
                            #     weight_Long_Position = [(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Long_Position) : Core.Float64(y_P_Negative_Long_Position) for i in 1:Base.length(y_A_Long_Position)];
                            # elseif Core.Float64(y_P_Positive_Long_Position) > Core.Float64(0.0) && Core.Float64(y_P_Negative_Long_Position) <= Core.Float64(0.0)
                            #     weight_Long_Position = [(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Long_Position) : Core.Float64(y_P_Negative_Long_Position) for i in 1:Base.length(y_A_Long_Position)];
                            # elseif Core.Float64(y_P_Positive_Long_Position) <= Core.Float64(0.0) && Core.Float64(y_P_Negative_Long_Position) > Core.Float64(0.0)
                            #     weight_Long_Position = [(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Long_Position) : Core.Float64(y_P_Negative_Long_Position) for i in 1:Base.length(y_A_Long_Position)];
                            # else
                            #     weight_Long_Position = [Core.Float64(1.0) for i in 1:Base.length(y_A_Long_Position)];
                            # end
                        elseif (Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position)) || (Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position))
                            weight_Long_Position = [Core.Float64(1.0) for i in 1:Base.length(y_A_Long_Position)];
                        else
                        end
                    end
                    # # println(y_C_Long_Position);
                    # if Core.Int64(Base.length(y_C_Long_Position)) > Core.Int64(0)
                    #     weight_Long_Position = [Core.Float64(Core.Float64(1.0) / Core.Float64(y_C_Long_Position[i])) for i in 1:Base.length(y_C_Long_Position)];  # 每兩次對衝交易間隔日長的倒數;
                    # end
                    # # println(y_D_Long_Position);
                    # if Core.Int64(Base.length(y_D_Long_Position)) > Core.Int64(0)
                    #     weight_Long_Position = [Core.Float64(Core.Float64(1.0) / Core.Float64(y_D_Long_Position[i])) for i in 1:Base.length(y_D_Long_Position)];  # 兩次對衝交易日成交價振幅平方和的倒數;
                    # end
                    # # println(y_E_Long_Position);
                    # if Core.Int64(Base.length(y_E_Long_Position)) > Core.Int64(0)
                    #     weight_Long_Position = [Core.Float64(y_E_Long_Position[i]) for i in 1:Base.length(y_E_Long_Position)];  # 兩次對衝交易日成交量（換手率）均值;
                    # end
                    # println(weight_Long_Position);

                    # println(y_A_Long_Position);
                    # y_Long_Position_profit = Core.Float64(0.0);  # 優化目標變量;
                    if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0) && Core.Int64(Base.length(weight_Long_Position)) > Core.Int64(0)
                        y_Long_Position_profit = Core.Float64(Base.sum([Core.Float64(weight_Long_Position[i] * y_A_Long_Position[i]) for i in 1:Base.length(y_A_Long_Position)]));  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
                        # y_Long_Position_profit = Core.Float64(0.0);  # 每兩次對衝交易利潤 × 權重，纍加總計;
                        # for i = 1:Base.length(y_A_Long_Position)
                        #     y_Long_Position_profit = y_Long_Position_profit + Core.Float64(weight_Long_Position[i] * y_A_Long_Position[i]);
                        # end
                    elseif Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0) && Core.Int64(Base.length(weight_Long_Position)) <= Core.Int64(0)
                        y_Long_Position_profit = Core.Float64(Base.sum([Core.Float64(y_A_Long_Position[i]) for i in 1:Base.length(y_A_Long_Position)]));  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
                        # y_Long_Position_profit = Core.Float64(0.0);  # 每兩次對衝交易利潤，纍加總計;
                        # for i = 1:Base.length(y_A_Long_Position)
                        #     y_Long_Position_profit = y_Long_Position_profit + Core.Float64(y_A_Long_Position[i]);
                        # end
                    else
                    end
                    # println(y_maximum_drawdown_Long_Position);
                    # y_Long_Position_loss = Core.Float64(0.0);  # 優化目標變量;
                    if !(Base.ismissing(y_maximum_drawdown_Long_Position) || Base.isnothing(y_maximum_drawdown_Long_Position))
                        if Core.Float64(y_maximum_drawdown_Long_Position) > Core.Float64(0.0)
                            if (!(Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position))) && (!(Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position)))
                                if Core.Float64(y_P_Positive_Long_Position) > Core.Float64(y_P_Negative_Long_Position)
                                    y_Long_Position_loss = Core.Float64(Core.Float64(y_maximum_drawdown_Long_Position) * Core.Float64(Core.Float64(y_P_Positive_Long_Position) - Core.Float64(y_P_Negative_Long_Position)));  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
                                elseif Core.Float64(y_P_Positive_Long_Position) <= Core.Float64(y_P_Negative_Long_Position)
                                    y_Long_Position_loss = Core.Float64(Core.Float64(y_maximum_drawdown_Long_Position) * Core.Float64(0.0));  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
                                else
                                end
                            elseif (Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position)) || (Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position))
                                y_Long_Position_loss = Core.Float64(y_maximum_drawdown_Long_Position);  # 每兩次對衝交易最大回撤，加權取極值總計;
                            else
                            end
                        elseif Core.Float64(y_maximum_drawdown_Long_Position) <= Core.Float64(0.0)
                            if (!(Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position))) && (!(Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position)))
                                y_Long_Position_loss = Core.Float64(Core.Float64(y_maximum_drawdown_Long_Position) * Core.Float64(y_P_Negative_Long_Position));  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
                            elseif (Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position)) || (Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position))
                                y_Long_Position_loss = Core.Float64(y_maximum_drawdown_Long_Position);  # 每兩次對衝交易最大回撤，加權取極值總計;
                            else
                            end
                        else
                        end
                    end

                    # 優化目標變量合入風險因素;
                    # if Core.Float64(y_P_Negative_Long_Position) === Core.Float64(0.0)
                    #     y_Long_Position_profit = Core.Float64(y_Long_Position_profit * y_P_Positive_Long_Position);  # 每次交易利潤 × 頻率 × 權重，加權纍加總計，然後再 × 正利潤概率，叠加不確定風險效果;
                    # else
                    #     y_Long_Position_profit = Core.Float64(y_Long_Position_profit * Core.Float64(y_P_Positive_Long_Position / y_P_Negative_Long_Position));  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計，然後再 × 正利潤概率，叠加不確定風險效果;
                    # end
                end
                # println(y_total_Long_Position);
                # println(y_maximum_drawdown_Long_Position);
                # println(y_Positive_Long_Position);
                # println(y_Negative_Long_Position);
                # println(y_P_Positive_Long_Position);
                # println(y_P_Negative_Long_Position);
                # println(y_amplitude_Long_Position);
                # println(y_turnover_Long_Position);
                # println(y_date_transaction_between_Long_Position);
                # println(weight_Long_Position);
                # println(y_Long_Position_profit);
                # println(y_Long_Position_loss);


                # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
                # 做空（Short Selling）記錄;
                y_total_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # 每兩次對衝交易利潤，纍加總計;
                y_maximum_drawdown_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                y_Positive_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # 交易規則正利潤纍計;
                y_Negative_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # 交易規則負利潤纍計;
                y_P_Positive_Short_Selling = Core.nothing;  # Core.Float64(0.0);
                y_P_Negative_Short_Selling = Core.nothing;  # Core.Float64(0.0);
                y_amplitude_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # amplitude_rate;
                y_turnover_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # turnover_volume; turnover_rate;
                y_date_transaction_between_Short_Selling = Core.nothing;  # Core.Float64(0.0);  # Between two date_transaction;
                y_Short_Selling_profit = Core.nothing;  # Core.Float64(0.0);  # 優化目標變量，利潤 × 權重;
                y_Short_Selling_loss = Core.nothing;  # Core.Float64(0.0);  # 優化目標變量，損失 × 權重;
                if investment_method === "Long_Position_and_Short_Selling" || investment_method === "Short_Selling"
                    # println(y_A_Short_Selling);
                    # y_total_Short_Selling = Core.Float64(0.0);  # 每兩次對衝交易利潤，纍加總計;
                    if Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0)
                        y_total_Short_Selling = Core.Float64(Base.sum([Core.Float64(y_A_Short_Selling[i]) for i in 1:Base.length(y_A_Short_Selling)]));  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                    end

                    # println(y_maximum_drawdown_Short_Selling);
                    # y_maximum_drawdown_Short_Selling = Core.Float64(0.0);  # 兩次對衝交易之間的最大回撤值，纍加總計;
                    if Core.Int64(Base.length(y_H_Short_Selling)) > Core.Int64(0) && Core.Int64(Base.findmax([(Base.typeof(y_H_Short_Selling[i]) <: Core.Array || Base.typeof(y_H_Short_Selling[i]) <: Base.Vector) ? Core.Int64(Base.length(y_H_Short_Selling[i])) : (-Base.Inf) for i in 1:Base.length(y_H_Short_Selling)])[1]) > Core.Int64(0)
                        y_maximum_drawdown_Short_Selling = Core.Float64(Base.findmin([if ((Base.typeof(y_H_Short_Selling[i]) <: Core.Array || Base.typeof(y_H_Short_Selling[i]) <: Base.Vector) && Core.Int64(Base.length(y_H_Short_Selling[i])) > Core.Int64(0)) Core.Float64(Base.findmin(y_H_Short_Selling[i])[1]) end for i in 1:Base.length(y_H_Short_Selling)])[1]);  # 每兩次對衝交易最大回撤損失，取極值統計;
                        # y_maximum_drawdown_Short_Selling = Core.Float64(Base.findmin([((Base.typeof(y_H_Short_Selling[i]) <: Core.Array || Base.typeof(y_H_Short_Selling[i]) <: Base.Vector) && Core.Int64(Base.length(y_H_Short_Selling[i])) > Core.Int64(0)) ? Core.Float64(Base.findmin(y_H_Short_Selling[i])[1]) : (+Base.Inf) for i in 1:Base.length(y_H_Short_Selling)])[1]);  # 每兩次對衝交易最大回撤損失，取極值統計;
                        # y_maximum_drawdown_Short_Selling = Core.Float64(Base.findmin([if ((Base.typeof(y_H_Short_Selling[i]) <: Core.Array || Base.typeof(y_H_Short_Selling[i]) <: Base.Vector) && Core.Int64(Base.length(y_H_Short_Selling[i])) > Core.Int64(0)) Core.Float64(Base.findmin(y_H_Short_Selling[i])[1]) else (+Base.Inf) end for i in 1:Base.length(y_H_Short_Selling)])[1]);  # 每兩次對衝交易最大回撤損失，取極值統計;
                    end

                    # println(y_A_Short_Selling);
                    # y_Positive_Short_Selling = Core.Float64(0.0);  # 交易規則正利潤纍計;
                    if Core.Int64(Base.length([(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Float64(y_A_Short_Selling[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Short_Selling)])) > Core.Int64(0)
                        # y_Positive_Short_Selling = Core.Float64(Base.sum([if Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0) Core.Float64(y_A_Short_Selling[i]) else Core.Float64(0.0) end for i in 1:Base.length(y_A_Short_Selling)]));
                        y_Positive_Short_Selling = Core.Float64(Base.sum([(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Float64(y_A_Short_Selling[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Short_Selling)]));
                    end
                    # y_Negative_Short_Selling = Core.Float64(0.0);  # 交易規則負利潤纍計;
                    if Core.Int64(Base.length([(Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0)) ? Core.Float64(y_A_Short_Selling[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Short_Selling)])) > Core.Int64(0)
                        # y_Negative_Short_Selling = Core.Float64(Base.sum([if Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0) Core.Float64(y_A_Short_Selling[i]) else Core.Float64(0.0) end for i in 1:Base.length(y_A_Short_Selling)]));
                        y_Negative_Short_Selling = Core.Float64(Base.sum([(Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0)) ? Core.Float64(y_A_Short_Selling[i]) : Core.Float64(0.0) for i in 1:Base.length(y_A_Short_Selling)]));
                    end
                    # y_Positive_Short_Selling = Core.Float64(0.0);  # 交易規則正利潤纍計;
                    # y_Negative_Short_Selling = Core.Float64(0.0);  # 交易規則負利潤纍計;
                    # for i = 1:Base.length(y_A_Short_Selling)
                    #     if Core.Int64(y_B_Short_Selling[i]) > Core.Int64(0)
                    #         y_Positive_Short_Selling = Core.Float64(y_Positive_Short_Selling + y_A_Short_Selling[i]);
                    #     elseif Core.Int64(y_B_Short_Selling[i]) < Core.Int64(0)
                    #         y_Negative_Short_Selling = Core.Float64(y_Negative_Short_Selling + y_A_Short_Selling[i]);
                    #     else
                    #     end
                    # end

                    # println(y_A_Short_Selling);
                    # y_P_Positive_Short_Selling = Core.Float64(0.0);
                    # y_P_Negative_Short_Selling = Core.Float64(0.0);
                    if Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0)
                        # y_P_Positive_Short_Selling = Core.Float64(Core.Int64(Base.sum([if Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Short_Selling)])) / Core.Int64(Base.length(y_A_Short_Selling)));
                        y_P_Positive_Short_Selling = Core.Float64(Core.Int64(Base.sum([(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Short_Selling)])) / Core.Int64(Base.length(y_A_Short_Selling)));
                        # y_P_Negative_Short_Selling = Core.Float64(Core.Int64(Base.sum([if Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Short_Selling)])) / Core.Int64(Base.length(y_A_Short_Selling)));
                        y_P_Negative_Short_Selling = Core.Float64(Core.Int64(Base.sum([(Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Short_Selling)])) / Core.Int64(Base.length(y_A_Short_Selling)));
                    end
                    # y_P_Positive_Short_Selling = Core.Int64(0);  # Core.Float64(0.0);  # 交易規則正利潤頻率;
                    # y_P_Negative_Short_Selling = Core.Int64(0);  # Core.Float64(0.0);  # 交易規則負利潤頻率;
                    # for i = 1:Base.length(y_A_Short_Selling)
                    #     if Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)
                    #         y_P_Positive_Short_Selling = Core.Int64(Core.Int64(y_P_Positive_Short_Selling) + Core.Int64(1));
                    #     elseif Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0)
                    #         y_P_Negative_Short_Selling = Core.Int64(Core.Int64(y_P_Negative_Short_Selling) + Core.Int64(1));
                    #     else
                    #     end
                    # end
                    # if Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0)
                    #     y_P_Positive_Short_Selling = Core.Float64(Core.Int64(y_P_Positive_Short_Selling) / Core.Int64(Base.length(y_A_Short_Selling)));
                    #     y_P_Negative_Short_Selling = Core.Float64(Core.Int64(y_P_Negative_Short_Selling) / Core.Int64(Base.length(y_A_Short_Selling)));
                    # end

                    # # y = Core.Float64(y_Positive_Short_Selling * y_P_Positive_Short_Selling);  # 每兩次對衝交易正利潤 × 頻率，纍加總計;
                    # # y = Core.Float64(y_Negative_Short_Selling * y_P_Negative_Short_Selling);  # 每兩次對衝交易負利潤 × 頻率，纍加總計;
                    # y = Core.Float64(y_Positive_Short_Selling * y_P_Positive_Short_Selling) - Core.Float64(y_Negative_Short_Selling * y_P_Negative_Short_Selling);

                    # println(y_D_Short_Selling);
                    # y_amplitude_Short_Selling = Core.Float64(0.0);  # amplitude_rate;
                    if Core.Int64(Base.length(y_D_Short_Selling)) > Core.Int64(0)
                        y_amplitude_Short_Selling = Core.Float64(Statistics.mean(y_D_Short_Selling));  # amplitude_rate;
                    end

                    # println(y_E_Short_Selling);
                    # y_turnover_Short_Selling = Core.Float64(0.0);  # turnover_volume; turnover_rate;
                    if Core.Int64(Base.length(y_E_Short_Selling)) > Core.Int64(0)
                        y_turnover_Short_Selling = Core.Float64(Statistics.mean(y_E_Short_Selling));  # turnover_volume; turnover_rate;
                    end

                    # println(y_C_Short_Selling);
                    # y_date_transaction_between_Short_Selling = Core.Float64(0.0);  # Between two date_transaction;
                    if Core.Int64(Base.length(y_C_Short_Selling)) > Core.Int64(0)
                        y_date_transaction_between_Short_Selling = Core.Float64(Statistics.mean(y_C_Short_Selling));  # Between two date_transaction;
                    end

                    weight_Short_Selling = Core.Array{Core.Float64, 1}();
                    # println(y_A_Short_Selling);
                    if Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0)
                        if (!(Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling))) && (!(Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling)))
                            weight_Short_Selling = [(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Short_Selling) : Core.Float64(y_P_Negative_Short_Selling) for i in 1:Base.length(y_A_Short_Selling)];
                            # if Core.Float64(y_P_Positive_Short_Selling) > Core.Float64(0.0) && Core.Float64(y_P_Negative_Short_Selling) > Core.Float64(0.0)
                            #     weight_Short_Selling = [(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Short_Selling) : Core.Float64(y_P_Negative_Short_Selling) for i in 1:Base.length(y_A_Short_Selling)];
                            # elseif Core.Float64(y_P_Positive_Short_Selling) > Core.Float64(0.0) && Core.Float64(y_P_Negative_Short_Selling) <= Core.Float64(0.0)
                            #     weight_Short_Selling = [(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Short_Selling) : Core.Float64(y_P_Negative_Short_Selling) for i in 1:Base.length(y_A_Short_Selling)];
                            # elseif Core.Float64(y_P_Positive_Short_Selling) <= Core.Float64(0.0) && Core.Float64(y_P_Negative_Short_Selling) > Core.Float64(0.0)
                            #     weight_Short_Selling = [(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Float64(y_P_Positive_Short_Selling) : Core.Float64(y_P_Negative_Short_Selling) for i in 1:Base.length(y_A_Short_Selling)];
                            # else
                            #     weight_Short_Selling = [Core.Float64(1.0) for i in 1:Base.length(y_A_Short_Selling)];
                            # end
                        elseif (Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling)) || (Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling))
                            weight_Short_Selling = [Core.Float64(1.0) for i in 1:Base.length(y_A_Short_Selling)];
                        else
                        end
                    end
                    # # println(y_C_Short_Selling);
                    # if Core.Int64(Base.length(y_C_Short_Selling)) > Core.Int64(0)
                    #     weight_Short_Selling = [Core.Float64(Core.Float64(1.0) / Core.Float64(y_C_Short_Selling[i])) for i in 1:Base.length(y_C_Short_Selling)];  # 每兩次對衝交易間隔日長的倒數;
                    # end
                    # # println(y_D_Short_Selling);
                    # if Core.Int64(Base.length(y_D_Short_Selling)) > Core.Int64(0)
                    #     weight_Short_Selling = [Core.Float64(Core.Float64(1.0) / Core.Float64(y_D_Short_Selling[i])) for i in 1:Base.length(y_D_Short_Selling)];  # 兩次對衝交易日成交價振幅平方和的倒數;
                    # end
                    # # println(y_E_Short_Selling);
                    # if Core.Int64(Base.length(y_E_Short_Selling)) > Core.Int64(0)
                    #     weight_Short_Selling = [Core.Float64(y_E_Short_Selling[i]) for i in 1:Base.length(y_E_Short_Selling)];  # 兩次對衝交易日成交量（換手率）均值;
                    # end
                    # println(weight_Short_Selling);

                    # println(y_A_Short_Selling);
                    # y_Short_Selling_profit = Core.Float64(0.0);  # 優化目標變量;
                    if Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0) && Core.Int64(Base.length(weight_Short_Selling)) > Core.Int64(0)
                        y_Short_Selling_profit = Core.Float64(Base.sum([Core.Float64(weight_Short_Selling[i] * y_A_Short_Selling[i]) for i in 1:Base.length(y_A_Short_Selling)]));  # 每兩次對衝交易利潤 × 權重，加權纍加總計;
                        # y_Short_Selling_profit = Core.Float64(0.0);  # 每兩次對衝交易利潤 × 權重，纍加總計;
                        # for i = 1:Base.length(y_A_Short_Selling)
                        #     y_Short_Selling_profit = y_Short_Selling_profit + Core.Float64(weight_Short_Selling[i] * y_A_Short_Selling[i]);
                        # end
                    elseif Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0) && Core.Int64(Base.length(weight_Short_Selling)) <= Core.Int64(0)
                        y_Short_Selling_profit = Core.Float64(Base.sum([Core.Float64(y_A_Short_Selling[i]) for i in 1:Base.length(y_A_Short_Selling)]));  # 每兩次對衝交易利潤，加權纍加總計;
                        # y_Short_Selling_profit = Core.Float64(0.0);  # 每兩次對衝交易利潤，纍加總計;
                        # for i = 1:Base.length(y_A_Short_Selling)
                        #     y_Short_Selling_profit = y_Short_Selling_profit + Core.Float64(y_A_Short_Selling[i]);
                        # end
                    else
                    end
                    # println(y_maximum_drawdown_Short_Selling);
                    # y_Short_Selling_loss = Core.Float64(0.0);  # 優化目標變量;
                    if (!(Base.ismissing(y_maximum_drawdown_Short_Selling) || Base.isnothing(y_maximum_drawdown_Short_Selling)))
                        if Core.Float64(y_maximum_drawdown_Short_Selling) > Core.Float64(0.0)
                            if (!(Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling))) && (!(Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling)))
                                if Core.Float64(y_P_Positive_Short_Selling) > Core.Float64(y_P_Negative_Short_Selling)
                                    y_Short_Selling_loss = Core.Float64(Core.Float64(y_maximum_drawdown_Short_Selling) * Core.Float64(Core.Float64(y_P_Positive_Short_Selling) - Core.Float64(y_P_Negative_Short_Selling)));  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
                                elseif Core.Float64(y_P_Positive_Short_Selling) <= Core.Float64(y_P_Negative_Short_Selling)
                                    y_Short_Selling_loss = Core.Float64(Core.Float64(y_maximum_drawdown_Short_Selling) * Core.Float64(0.0));  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
                                else
                                end
                            elseif (Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling)) || (Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling))
                                y_Short_Selling_loss = Core.Float64(y_maximum_drawdown_Short_Selling);  # 每兩次對衝交易最大回撤，加權取極值總計;
                            else
                            end
                        elseif Core.Float64(y_maximum_drawdown_Short_Selling) <= Core.Float64(0.0)
                            if (!(Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling))) && (!(Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling)))
                                y_Short_Selling_loss = Core.Float64(Core.Float64(y_maximum_drawdown_Short_Selling) * Core.Float64(y_P_Negative_Short_Selling));  # 每兩次對衝交易最大回撤 × 權重，加權取極值總計;
                            elseif (Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling)) || (Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling))
                                y_Short_Selling_loss = Core.Float64(y_maximum_drawdown_Short_Selling);  # 每兩次對衝交易最大回撤，加權取極值總計;
                            else
                            end
                        else
                        end
                    end

                    # 優化目標變量合入風險因素;
                    # if Core.Float64(y_P_Negative_Short_Selling) === Core.Float64(0.0)
                    #     y_Short_Selling_profit = Core.Float64(y_Short_Selling_profit * y_P_Positive_Short_Selling);  # 每次交易利潤 × 頻率 × 權重，加權纍加總計，然後再 × 正利潤概率，叠加不確定風險效果;
                    # else
                    #     y_Short_Selling_profit = Core.Float64(y_Short_Selling_profit * Core.Float64(y_P_Positive_Short_Selling / y_P_Negative_Short_Selling));  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計，然後再 × 正利潤概率，叠加不確定風險效果;
                    # end
                end
                # println(y_total_Short_Selling);
                # println(y_maximum_drawdown_Short_Selling);
                # println(y_Positive_Short_Selling);
                # println(y_Negative_Short_Selling);
                # println(y_P_Positive_Short_Selling);
                # println(y_P_Negative_Short_Selling);
                # println(y_amplitude_Short_Selling);
                # println(y_turnover_Short_Selling);
                # println(y_date_transaction_between_Short_Selling);
                # println(weight_Short_Selling);
                # println(y_Short_Selling_profit);
                # println(y_Short_Selling_loss);


                # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
                # 做多（Long Position）記錄 + 做空（Short Selling）記錄，纍計求和;
                y_total = Core.nothing;  # Core.Float64(y_total_Long_Position + y_total_Short_Selling);  # 每兩次對衝交易利潤，纍加總計;
                if (!(Base.ismissing(y_total_Long_Position) || Base.isnothing(y_total_Long_Position))) && (!(Base.ismissing(y_total_Short_Selling) || Base.isnothing(y_total_Short_Selling)))
                    y_total = Core.Float64(Base.sum([Core.Float64(y_total_Long_Position), Core.Float64(y_total_Short_Selling)]));  # 每兩次對衝交易利潤，纍加總計;
                elseif (!(Base.ismissing(y_total_Long_Position) || Base.isnothing(y_total_Long_Position))) && (Base.ismissing(y_total_Short_Selling) || Base.isnothing(y_total_Short_Selling))
                    y_total = Core.Float64(y_total_Long_Position);  # 每兩次對衝交易利潤，纍加總計;
                elseif (Base.ismissing(y_total_Long_Position) || Base.isnothing(y_total_Long_Position)) && (!(Base.ismissing(y_total_Short_Selling) || Base.isnothing(y_total_Short_Selling)))
                    y_total = Core.Float64(y_total_Short_Selling);  # 每兩次對衝交易利潤，纍加總計;
                else
                    y_total = Core.nothing;
                end
                y_maximum_drawdown = Core.nothing;  # Core.Float64(Base.findmin([y_maximum_drawdown_Long_Position, y_maximum_drawdown_Short_Selling])[1]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                if (!(Base.ismissing(y_maximum_drawdown_Long_Position) || Base.isnothing(y_maximum_drawdown_Long_Position))) && (!(Base.ismissing(y_maximum_drawdown_Short_Selling) || Base.isnothing(y_maximum_drawdown_Short_Selling)))
                    y_maximum_drawdown = Core.Float64(Base.findmin([y_maximum_drawdown_Long_Position, y_maximum_drawdown_Short_Selling])[1]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                elseif (!(Base.ismissing(y_maximum_drawdown_Long_Position) || Base.isnothing(y_maximum_drawdown_Long_Position))) && (Base.ismissing(y_maximum_drawdown_Short_Selling) || Base.isnothing(y_maximum_drawdown_Short_Selling))
                    y_maximum_drawdown = Core.Float64(y_maximum_drawdown_Long_Position);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                elseif (Base.ismissing(y_maximum_drawdown_Long_Position) || Base.isnothing(y_maximum_drawdown_Long_Position)) && (!(Base.ismissing(y_maximum_drawdown_Short_Selling) || Base.isnothing(y_maximum_drawdown_Short_Selling)))
                    y_maximum_drawdown = Core.Float64(y_maximum_drawdown_Short_Selling);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                else
                    y_maximum_drawdown = Core.nothing;
                end
                y_Positive = Core.nothing;  # Core.Float64(y_Positive_Long_Position + y_Positive_Short_Selling);  # 交易規則正利潤纍計;
                if (!(Base.ismissing(y_Positive_Long_Position) || Base.isnothing(y_Positive_Long_Position))) && (!(Base.ismissing(y_Positive_Short_Selling) || Base.isnothing(y_Positive_Short_Selling)))
                    y_Positive = Core.Float64(Base.sum([Core.Float64(y_Positive_Long_Position), Core.Float64(y_Positive_Short_Selling)]));  # 交易規則正利潤纍計;
                elseif (!(Base.ismissing(y_Positive_Long_Position) || Base.isnothing(y_Positive_Long_Position))) && (Base.ismissing(y_Positive_Short_Selling) || Base.isnothing(y_Positive_Short_Selling))
                    y_Positive = Core.Float64(y_Positive_Long_Position);  # 交易規則正利潤纍計;
                elseif (Base.ismissing(y_Positive_Long_Position) || Base.isnothing(y_Positive_Long_Position)) && (!(Base.ismissing(y_Positive_Short_Selling) || Base.isnothing(y_Positive_Short_Selling)))
                    y_Positive = Core.Float64(y_Positive_Short_Selling);  # 交易規則正利潤纍計;
                else
                    y_Positive = Core.nothing;
                end
                y_Negative = Core.nothing;  # Core.Float64(y_Negative_Long_Position + y_Negative_Short_Selling);  # 交易規則負利潤纍計;
                if (!(Base.ismissing(y_Negative_Long_Position) || Base.isnothing(y_Negative_Long_Position))) && (!(Base.ismissing(y_Negative_Short_Selling) || Base.isnothing(y_Negative_Short_Selling)))
                    y_Negative = Core.Float64(Base.sum([Core.Float64(y_Negative_Long_Position), Core.Float64(y_Negative_Short_Selling)]));  # 交易規則負利潤纍計;
                elseif (!(Base.ismissing(y_Negative_Long_Position) || Base.isnothing(y_Negative_Long_Position))) && (Base.ismissing(y_Negative_Short_Selling) || Base.isnothing(y_Negative_Short_Selling))
                    y_Negative = Core.Float64(y_Negative_Long_Position);  # 交易規則負利潤纍計;
                elseif (Base.ismissing(y_Negative_Long_Position) || Base.isnothing(y_Negative_Long_Position)) && (!(Base.ismissing(y_Negative_Short_Selling) || Base.isnothing(y_Negative_Short_Selling)))
                    y_Negative = Core.Float64(y_Negative_Short_Selling);  # 交易規則負利潤纍計;
                else
                    y_Negative = Core.nothing;
                end
                y_P_Positive = Core.nothing;  # Core.Float64(0.0);
                y_P_Negative = Core.nothing;  # Core.Float64(0.0);
                if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0) || Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0)
                    y_Positive_count_Long_Position = Core.Int64(0);
                    y_Negative_count_Long_Position = Core.Int64(0);
                    y_Positive_count_Short_Selling = Core.Int64(0);
                    y_Negative_count_Short_Selling = Core.Int64(0);
                    if Core.Int64(Base.length(y_A_Long_Position)) > Core.Int64(0)
                        # y_Positive_count_Long_Position = Core.Int64(Base.sum([if Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Long_Position)]));
                        y_Positive_count_Long_Position = Core.Int64(Base.sum([(Core.Float64(y_A_Long_Position[i]) > Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Long_Position)]));
                        # y_Negative_count_Long_Position = Core.Int64(Base.sum([if Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Long_Position)]));
                        y_Negative_count_Long_Position = Core.Int64(Base.sum([(Core.Float64(y_A_Long_Position[i]) < Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Long_Position)]));
                    end
                    if Core.Int64(Base.length(y_A_Short_Selling)) > Core.Int64(0)
                        # y_Positive_count_Short_Selling = Core.Int64(Base.sum([if Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Short_Selling)]));
                        y_Positive_count_Short_Selling = Core.Int64(Base.sum([(Core.Float64(y_A_Short_Selling[i]) > Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Short_Selling)]));
                        # y_Negative_count_Short_Selling = Core.Int64(Base.sum([if Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0) Core.Int64(1) else Core.Int64(0) end for i in 1:Base.length(y_A_Short_Selling)]));
                        y_Negative_count_Short_Selling = Core.Int64(Base.sum([(Core.Float64(y_A_Short_Selling[i]) < Core.Float64(0.0)) ? Core.Int64(1) : Core.Int64(0) for i in 1:Base.length(y_A_Short_Selling)]));
                    end
                    y_P_Positive = Core.Float64(Core.Int64(Core.Int64(y_Positive_count_Long_Position) + Core.Int64(y_Positive_count_Short_Selling)) / Core.Int64(Core.Int64(Base.length(y_A_Long_Position)) + Core.Int64(Base.length(y_A_Short_Selling))));
                    y_P_Negative = Core.Float64(Core.Int64(Core.Int64(y_Negative_count_Long_Position) + Core.Int64(y_Negative_count_Short_Selling)) / Core.Int64(Core.Int64(Base.length(y_A_Long_Position)) + Core.Int64(Base.length(y_A_Short_Selling))));
                end
                y_amplitude = Core.nothing;  # Core.Float64(Core.Float64(y_amplitude_Long_Position + y_amplitude_Short_Selling) / Core.Int64(2));
                if (!(Base.ismissing(y_amplitude_Long_Position) || Base.isnothing(y_amplitude_Long_Position))) && (!(Base.ismissing(y_amplitude_Short_Selling) || Base.isnothing(y_amplitude_Short_Selling)))
                    # y_amplitude = Core.Float64(Base.findmax([Core.Float64(y_amplitude_Long_Position), Core.Float64(y_amplitude_Short_Selling)])[1]);  # 取極大值;
                    # y_amplitude = Core.Float64(Base.findmin([Core.Float64(y_amplitude_Long_Position), Core.Float64(y_amplitude_Short_Selling)])[1]);  # 取極小值;
                    # y_amplitude = Core.Float64(Base.sum([Core.Float64(y_amplitude_Long_Position), Core.Float64(y_amplitude_Short_Selling)]));  # 取總和;
                    # y_amplitude = Core.Float64(Statistics.mean([Core.Float64(y_amplitude_Long_Position), Core.Float64(y_amplitude_Short_Selling)]));  # 取均值;
                    y_amplitude = Core.Float64(Statistics.median([Core.Float64(y_amplitude_Long_Position), Core.Float64(y_amplitude_Short_Selling)]));  # 取中位數;
                elseif (!(Base.ismissing(y_amplitude_Long_Position) || Base.isnothing(y_amplitude_Long_Position))) && (Base.ismissing(y_amplitude_Short_Selling) || Base.isnothing(y_amplitude_Short_Selling))
                    y_amplitude = Core.Float64(y_amplitude_Long_Position);
                elseif (Base.ismissing(y_amplitude_Long_Position) || Base.isnothing(y_amplitude_Long_Position)) && (!(Base.ismissing(y_amplitude_Short_Selling) || Base.isnothing(y_amplitude_Short_Selling)))
                    y_amplitude = Core.Float64(y_amplitude_Short_Selling);
                else
                    y_amplitude = Core.nothing;
                end
                # if Core.Float64(y_amplitude_Long_Position) !== Core.Float64(0.0) && Core.Float64(y_amplitude_Short_Selling) === Core.Float64(0.0)
                #     y_amplitude = Core.Float64(y_amplitude_Long_Position);
                # elseif Core.Float64(y_amplitude_Long_Position) === Core.Float64(0.0) && Core.Float64(y_amplitude_Short_Selling) !== Core.Float64(0.0)
                #     y_amplitude = Core.Float64(y_amplitude_Short_Selling);
                # else
                #     y_amplitude = Core.Float64(Core.Float64(y_amplitude_Long_Position + y_amplitude_Short_Selling) / Core.Int64(2));
                # end
                y_turnover = Core.nothing;  # Core.Float64(Core.Float64(y_turnover_Long_Position + y_turnover_Short_Selling) / Core.Int64(2));
                if (!(Base.ismissing(y_turnover_Long_Position) || Base.isnothing(y_turnover_Long_Position))) && (!(Base.ismissing(y_turnover_Short_Selling) || Base.isnothing(y_turnover_Short_Selling)))
                    # y_turnover = Core.Float64(Base.findmax([Core.Float64(y_turnover_Long_Position), Core.Float64(y_turnover_Short_Selling)])[1]);  # 取極大值;
                    # y_turnover = Core.Float64(Base.findmin([Core.Float64(y_turnover_Long_Position), Core.Float64(y_turnover_Short_Selling)])[1]);  # 取極小值;
                    # y_turnover = Core.Float64(Base.sum([Core.Float64(y_turnover_Long_Position), Core.Float64(y_turnover_Short_Selling)]));  # 取總和;
                    # y_turnover = Core.Float64(Statistics.mean([Core.Float64(y_turnover_Long_Position), Core.Float64(y_turnover_Short_Selling)]));  # 取均值;
                    y_turnover = Core.Float64(Statistics.median([Core.Float64(y_turnover_Long_Position), Core.Float64(y_turnover_Short_Selling)]));  # 取中位數;
                elseif (!(Base.ismissing(y_turnover_Long_Position) || Base.isnothing(y_turnover_Long_Position))) && (Base.ismissing(y_turnover_Short_Selling) || Base.isnothing(y_turnover_Short_Selling))
                    y_turnover = Core.Float64(y_turnover_Long_Position);
                elseif (Base.ismissing(y_turnover_Long_Position) || Base.isnothing(y_turnover_Long_Position)) && (!(Base.ismissing(y_turnover_Short_Selling) || Base.isnothing(y_turnover_Short_Selling)))
                    y_turnover = Core.Float64(y_turnover_Short_Selling);
                else
                    y_turnover = Core.nothing;
                end
                # if Core.Float64(y_turnover_Long_Position) !== Core.Float64(0.0) && Core.Float64(y_turnover_Short_Selling) === Core.Float64(0.0)
                #     y_turnover = Core.Float64(y_turnover_Long_Position);
                # elseif Core.Float64(y_turnover_Long_Position) === Core.Float64(0.0) && Core.Float64(y_turnover_Short_Selling) !== Core.Float64(0.0)
                #     y_turnover = Core.Float64(y_turnover_Short_Selling);
                # else
                #     y_turnover = Core.Float64(Core.Float64(y_turnover_Long_Position + y_turnover_Short_Selling) / Core.Int64(2));
                # end
                y_date_transaction_between = Core.nothing;  # Core.Float64(Core.Float64(y_date_transaction_between_Long_Position + y_date_transaction_between_Short_Selling) / Core.Int64(2));  # Between two date_transaction;
                if (!(Base.ismissing(y_date_transaction_between_Long_Position) || Base.isnothing(y_date_transaction_between_Long_Position))) && (!(Base.ismissing(y_date_transaction_between_Short_Selling) || Base.isnothing(y_date_transaction_between_Short_Selling)))
                    # y_date_transaction_between = Core.Float64(Base.findmax([Core.Float64(y_date_transaction_between_Long_Position), Core.Float64(y_date_transaction_between_Short_Selling)])[1]);  # 取極大值;
                    # y_date_transaction_between = Core.Float64(Base.findmin([Core.Float64(y_date_transaction_between_Long_Position), Core.Float64(y_date_transaction_between_Short_Selling)])[1]);  # 取極小值;
                    # y_date_transaction_between = Core.Float64(Base.sum([Core.Float64(y_date_transaction_between_Long_Position), Core.Float64(y_date_transaction_between_Short_Selling)]));  # 取總和;
                    # y_date_transaction_between = Core.Float64(Statistics.mean([Core.Float64(y_date_transaction_between_Long_Position), Core.Float64(y_date_transaction_between_Short_Selling)]));  # 取均值;
                    y_date_transaction_between = Core.Float64(Statistics.median([Core.Float64(y_date_transaction_between_Long_Position), Core.Float64(y_date_transaction_between_Short_Selling)]));  # 取中位數;
                elseif (!(Base.ismissing(y_date_transaction_between_Long_Position) || Base.isnothing(y_date_transaction_between_Long_Position))) && (Base.ismissing(y_date_transaction_between_Short_Selling) || Base.isnothing(y_date_transaction_between_Short_Selling))
                    y_date_transaction_between = Core.Float64(y_date_transaction_between_Long_Position);
                elseif (Base.ismissing(y_date_transaction_between_Long_Position) || Base.isnothing(y_date_transaction_between_Long_Position)) && (!(Base.ismissing(y_date_transaction_between_Short_Selling) || Base.isnothing(y_date_transaction_between_Short_Selling)))
                    y_date_transaction_between = Core.Float64(y_date_transaction_between_Short_Selling);
                else
                    y_date_transaction_between = Core.nothing;
                end
                # if Core.Float64(y_date_transaction_between_Long_Position) !== Core.Float64(0.0) && Core.Float64(y_date_transaction_between_Short_Selling) === Core.Float64(0.0)
                #     y_date_transaction_between = Core.Float64(y_date_transaction_between_Long_Position);  # Between two date_transaction;
                # elseif Core.Float64(y_date_transaction_between_Long_Position) === Core.Float64(0.0) && Core.Float64(y_date_transaction_between_Short_Selling) !== Core.Float64(0.0)
                #     y_date_transaction_between = Core.Float64(y_date_transaction_between_Short_Selling);  # Between two date_transaction;
                # else
                #     y_date_transaction_between = Core.Float64(Core.Float64(y_date_transaction_between_Long_Position + y_date_transaction_between_Short_Selling) / Core.Int64(2));  # Between two date_transaction;
                # end
                y_profit = Core.nothing;  # Core.Float64(y_Long_Position_profit + y_Short_Selling_profit);  # 優化目標變量;
                if (Base.ismissing(y_Long_Position_profit) || Base.isnothing(y_Long_Position_profit)) && (Base.ismissing(y_Short_Selling_profit) || Base.isnothing(y_Short_Selling_profit))
                    y_profit = Core.nothing;
                elseif (!(Base.ismissing(y_Long_Position_profit) || Base.isnothing(y_Long_Position_profit))) && (Base.ismissing(y_Short_Selling_profit) || Base.isnothing(y_Short_Selling_profit))
                    y_profit = Core.Float64(y_Long_Position_profit);
                elseif (Base.ismissing(y_Long_Position_profit) || Base.isnothing(y_Long_Position_profit)) && (!(Base.ismissing(y_Short_Selling_profit) || Base.isnothing(y_Short_Selling_profit)))
                    y_profit = Core.Float64(y_Short_Selling_profit);
                else
                    # y_profit = Core.Float64(Base.findmax([Core.Float64(y_Long_Position_profit), Core.Float64(y_Short_Selling_profit)])[1]);  # 取極大值;
                    # y_profit = Core.Float64(Base.findmin([Core.Float64(y_Long_Position_profit), Core.Float64(y_Short_Selling_profit)])[1]);  # 取極小值;
                    # y_profit = Core.Float64(Statistics.mean([Core.Float64(y_Long_Position_profit), Core.Float64(y_Short_Selling_profit)]));  # 取均值;
                    # y_profit = Core.Float64(Statistics.median([Core.Float64(y_Long_Position_profit), Core.Float64(y_Short_Selling_profit)]));  # 取中位數;
                    y_profit = Core.Float64(Base.sum([Core.Float64(y_Long_Position_profit), Core.Float64(y_Short_Selling_profit)]));  # 取總和;
                end
                y_loss = Core.nothing;  # Core.Float64(y_Long_Position_loss + y_Short_Selling_loss);  # 優化目標變量;
                if (Base.ismissing(y_Long_Position_loss) || Base.isnothing(y_Long_Position_loss)) && (Base.ismissing(y_Short_Selling_loss) || Base.isnothing(y_Short_Selling_loss))
                    y_loss = Core.nothing;
                elseif (!(Base.ismissing(y_Long_Position_loss) || Base.isnothing(y_Long_Position_loss))) && (Base.ismissing(y_Short_Selling_loss) || Base.isnothing(y_Short_Selling_loss))
                    y_loss = Core.Float64(y_Long_Position_loss);
                elseif (Base.ismissing(y_Long_Position_loss) || Base.isnothing(y_Long_Position_loss)) && (!(Base.ismissing(y_Short_Selling_loss) || Base.isnothing(y_Short_Selling_loss)))
                    y_loss = Core.Float64(y_Short_Selling_loss);
                else
                    # y_loss = Core.Float64(Base.findmax([Core.Float64(y_Long_Position_loss), Core.Float64(y_Short_Selling_loss)])[1]);  # 取極大值;
                    # y_loss = Core.Float64(Base.findmin([Core.Float64(y_Long_Position_loss), Core.Float64(y_Short_Selling_loss)])[1]);  # 取極小值;
                    # y_loss = Core.Float64(Statistics.mean([Core.Float64(y_Long_Position_loss), Core.Float64(y_Short_Selling_loss)]));  # 取均值;
                    # y_loss = Core.Float64(Statistics.median([Core.Float64(y_Long_Position_loss), Core.Float64(y_Short_Selling_loss)]));  # 取中位數;
                    y_loss = Core.Float64(Base.sum([Core.Float64(y_Long_Position_loss), Core.Float64(y_Short_Selling_loss)]));  # 取總和;
                end

                # 擇時權重，每兩次對衝交易的盈利概率占比;
                weight_MarketTiming_Dict = Base.Dict{Core.String, Core.Any}();
                if (!(Base.ismissing(y_P_Positive_Long_Position) || Base.isnothing(y_P_Positive_Long_Position))) && (!(Base.ismissing(y_P_Negative_Long_Position) || Base.isnothing(y_P_Negative_Long_Position)))
                    if Core.Float64(y_P_Positive_Long_Position) > Core.Float64(y_P_Negative_Long_Position)
                        weight_MarketTiming_Dict["Long_Position"] = Core.Float64(Core.Float64(y_P_Positive_Long_Position) - Core.Float64(y_P_Negative_Long_Position));
                    else
                        weight_MarketTiming_Dict["Long_Position"] = Core.Float64(0.0);
                    end
                end
                if (!(Base.ismissing(y_P_Positive_Short_Selling) || Base.isnothing(y_P_Positive_Short_Selling))) && (!(Base.ismissing(y_P_Negative_Short_Selling) || Base.isnothing(y_P_Negative_Short_Selling)))
                    if Core.Float64(y_P_Positive_Short_Selling) > Core.Float64(y_P_Negative_Short_Selling)
                        weight_MarketTiming_Dict["Short_Selling"] = Core.Float64(Core.Float64(y_P_Positive_Short_Selling) - Core.Float64(y_P_Negative_Short_Selling));
                    else
                        weight_MarketTiming_Dict["Short_Selling"] = Core.Float64(0.0);
                    end
                end
                # println(weight_MarketTiming_Dict);

                # 每一股票（ticker symbol）函數返回值;
                result_ticker_symbol = Base.Dict{Core.String, Core.Any}(
                    "y_profit" => y_profit,  # 優化目標變量，每兩次對衝交易利潤 × 權重，加權纍加總計;
                    "y_Long_Position_profit" => y_Long_Position_profit,  # 優化目標變量，做多（Long Position），每兩次對衝交易利潤 × 權重，加權纍加總計;
                    "y_Short_Selling_profit" => y_Short_Selling_profit,  # 優化目標變量，做空（Short Selling），每兩次對衝交易利潤 × 權重，加權纍加總計;
                    "y_loss" => y_loss,  # 優化目標變量，每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                    "y_Long_Position_loss" => y_Long_Position_loss,  # 優化目標變量，做多（Long Position），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                    "y_Short_Selling_loss" => y_Short_Selling_loss,  # 優化目標變量，做空（Short Selling），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                    "maximum_drawdown" => y_maximum_drawdown,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                    "maximum_drawdown_Long_Position" => y_maximum_drawdown_Long_Position,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                    "maximum_drawdown_Short_Selling" => y_maximum_drawdown_Short_Selling,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                    "profit_total" => y_total,  # 每兩次對衝交易利潤 × 權重，纍加總計;
                    "Long_Position_profit_total" => y_total_Long_Position,  # 每兩次對衝交易利潤 × 權重，纍加總計;
                    "Short_Selling_profit_total" => y_total_Short_Selling,  # 每兩次對衝交易利潤 × 權重，纍加總計;
                    "profit_Positive" => y_Positive,  # 每兩次對衝交易收益纍加總計;
                    "Long_Position_profit_Positive" => y_Positive_Long_Position,  # 每兩次對衝交易收益纍加總計;
                    "Short_Selling_profit_Positive" => y_Positive_Short_Selling,  # 每兩次對衝交易收益纍加總計;
                    "profit_Positive_probability" => y_P_Positive,  # 每兩次對衝交易正利潤概率;
                    "Long_Position_profit_Positive_probability" => y_P_Positive_Long_Position,  # 每兩次對衝交易正利潤概率;
                    "Short_Selling_profit_Positive_probability" => y_P_Positive_Short_Selling,  # 每兩次對衝交易正利潤概率;
                    "profit_Negative" => y_Negative,  # 每兩次對衝交易損失纍加總計;
                    "Long_Position_profit_Negative" => y_Negative_Long_Position,  # 每兩次對衝交易損失纍加總計;
                    "Short_Selling_profit_Negative" => y_Negative_Short_Selling,  # 每兩次對衝交易損失纍加總計;
                    "profit_Negative_probability" => y_P_Negative,  # 每兩次對衝交易負利潤概率;
                    "Long_Position_profit_Negative_probability" => y_P_Negative_Long_Position,  # 每兩次對衝交易負利潤概率;
                    "Short_Selling_profit_Negative_probability" => y_P_Negative_Short_Selling,  # 每兩次對衝交易負利潤概率;
                    "Long_Position_profit_date_transaction" => y_A_Long_Position,  # 每兩次對衝交易利潤，向量;
                    "Short_Selling_profit_date_transaction" => y_A_Short_Selling,  # 每兩次對衝交易利潤，向量;
                    "Long_Position_drawdown_date_transaction" => y_H_Long_Position,  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                    "Short_Selling_drawdown_date_transaction" => y_H_Short_Selling,  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                    "average_price_amplitude_date_transaction" => y_amplitude,  # 兩次對衝交易日成交價振幅平方和，均值;
                    "Long_Position_average_price_amplitude_date_transaction" => y_amplitude_Long_Position,  # 兩次對衝交易日成交價振幅平方和，均值;
                    "Short_Selling_average_price_amplitude_date_transaction" => y_amplitude_Short_Selling,  # 兩次對衝交易日成交價振幅平方和，均值;
                    "Long_Position_price_amplitude_date_transaction" => y_D_Long_Position,  # 兩次對衝交易日成交價振幅平方和，向量;
                    "Short_Selling_price_amplitude_date_transaction" => y_D_Short_Selling,  # 兩次對衝交易日成交價振幅平方和，向量;
                    "average_volume_turnover_date_transaction" => y_turnover,  # 兩次對衝交易日成交量（換手率）均值;
                    "Long_Position_average_volume_turnover_date_transaction" => y_turnover_Long_Position,  # 兩次對衝交易日成交量（換手率）均值;
                    "Short_Selling_average_volume_turnover_date_transaction" => y_turnover_Short_Selling,  # 兩次對衝交易日成交量（換手率）均值;
                    "Long_Position_volume_turnover_date_transaction" => y_E_Long_Position,  # 兩次對衝交易日成交量（換手率）向量;
                    "Short_Selling_volume_turnover_date_transaction" => y_E_Short_Selling,  # 兩次對衝交易日成交量（換手率）向量;
                    "average_date_transaction_between" => y_date_transaction_between,  # 兩次對衝交易間隔日長，均值;
                    "Long_Position_average_date_transaction_between" => y_date_transaction_between_Long_Position,  # 兩次對衝交易間隔日長，均值;
                    "Short_Selling_average_date_transaction_between" => y_date_transaction_between_Short_Selling,  # 兩次對衝交易間隔日長，均值;
                    "Long_Position_date_transaction_between" => y_C_Long_Position,  # 兩次對衝交易間隔日長，向量;
                    "Short_Selling_date_transaction_between" => y_C_Short_Selling,  # 兩次對衝交易間隔日長，向量;
                    "Long_Position_date_transaction" => y_F_Long_Position,  # 按規則執行交易的日期，向量;
                    "Short_Selling_date_transaction" => y_F_Short_Selling,  # 按規則執行交易的日期，向量;
                    "P1_Array" => P1_Array,  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
                    "revenue_and_expenditure_records_date_transaction" => y_G,  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
                    "weight_MarketTiming" => weight_MarketTiming_Dict  # 擇時權重，每兩次對衝交易的盈利概率占比;
                );

                # 釋放内存;
                x0 = Core.nothing;
                x1 = Core.nothing;
                x3 = Core.nothing;
                x4 = Core.nothing;
                x5 = Core.nothing;
                x6 = Core.nothing;
                x7 = Core.nothing;
                x8 = Core.nothing;
                x9 = Core.nothing;
                P1_Array = Core.nothing;
                y_G = Core.nothing;
                y_A_Long_Position = Core.nothing;
                y_B_Long_Position = Core.nothing;
                y_C_Long_Position = Core.nothing;
                y_D_Long_Position = Core.nothing;
                y_E_Long_Position = Core.nothing;
                y_F_Long_Position = Core.nothing;
                y_H_Long_Position = Core.nothing;
                Index_date_transaction_Long_Position = Core.nothing;
                y_A_Short_Selling = Core.nothing;
                y_B_Short_Selling = Core.nothing;
                y_C_Short_Selling = Core.nothing;
                y_D_Short_Selling = Core.nothing;
                y_E_Short_Selling = Core.nothing;
                y_F_Short_Selling = Core.nothing;
                y_H_Short_Selling = Core.nothing;
                Index_date_transaction_Short_Selling = Core.nothing;

                # 全部股票的函數返回值;
                result[key] = result_ticker_symbol;
                result_ticker_symbol = Core.nothing;  # 釋放内存;
            end
        end
    end

    # result = Base.Dict{Core.String, Core.Any}(
    #     "ticker_symbol" => Base.Dict{Core.String, Core.Any}(
    #         "y_profit" => y_profit,  # 優化目標變量，每兩次對衝交易利潤 × 權重，加權纍加總計;
    #         "y_Long_Position_profit" => y_Long_Position_profit,  # 優化目標變量，做多（Long Position），每兩次對衝交易利潤 × 權重，加權纍加總計;
    #         "y_Short_Selling_profit" => y_Short_Selling_profit,  # 優化目標變量，做空（Short Selling），每兩次對衝交易利潤 × 權重，加權纍加總計;
    #         "y_loss" => y_loss,  # 優化目標變量，每兩次對衝交易最大回撤 × 權重，加權纍加總計;
    #         "y_Long_Position_loss" => y_Long_Position_loss,  # 優化目標變量，做多（Long Position），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
    #         "y_Short_Selling_loss" => y_Short_Selling_loss,  # 優化目標變量，做空（Short Selling），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
    #         "maximum_drawdown" => y_maximum_drawdown,  # 兩次對衝交易之間的最大回撤值，取極值統計;
    #         "maximum_drawdown_Long_Position" => y_maximum_drawdown_Long_Position,  # 兩次對衝交易之間的最大回撤值，取極值統計;
    #         "maximum_drawdown_Short_Selling" => y_maximum_drawdown_Short_Selling,  # 兩次對衝交易之間的最大回撤值，取極值統計;
    #         "profit_total" => y_total,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
    #         "Long_Position_profit_total" => y_total_Long_Position,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
    #         "Short_Selling_profit_total" => y_total_Short_Selling,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
    #         "profit_Positive" => y_Positive,  # 每兩次對衝交易收益纍加總計;
    #         "Long_Position_profit_Positive" => y_Positive_Long_Position,  # 每兩次對衝交易收益纍加總計;
    #         "Short_Selling_profit_Positive" => y_Positive_Short_Selling,  # 每兩次對衝交易收益纍加總計;
    #         "profit_Positive_probability" => y_P_Positive,  # 每兩次對衝交易正利潤概率;
    #         "Long_Position_profit_Positive_probability" => y_P_Positive_Long_Position,  # 每兩次對衝交易正利潤概率;
    #         "Short_Selling_profit_Positive_probability" => y_P_Positive_Short_Selling,  # 每兩次對衝交易正利潤概率;
    #         "profit_Negative" => y_Negative,  # 每兩次對衝交易損失纍加總計;
    #         "Long_Position_profit_Negative" => y_Negative_Long_Position,  # 每兩次對衝交易損失纍加總計;
    #         "Short_Selling_profit_Negative" => y_Negative_Short_Selling,  # 每兩次對衝交易損失纍加總計;
    #         "profit_Negative_probability" => y_P_Negative,  # 每兩次對衝交易負利潤概率;
    #         "Long_Position_profit_Negative_probability" => y_P_Negative_Long_Position,  # 每兩次對衝交易負利潤概率;
    #         "Short_Selling_profit_Negative_probability" => y_P_Negative_Short_Selling,  # 每兩次對衝交易負利潤概率;
    #         "Long_Position_profit_date_transaction" => y_A_Long_Position,  # 每兩次對衝交易利潤，向量;
    #         "Short_Selling_profit_date_transaction" => y_A_Short_Selling,  # 每兩次對衝交易利潤，向量;
    #         "Long_Position_drawdown_date_transaction" => y_H_Long_Position,  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    #         "Short_Selling_drawdown_date_transaction" => y_H_Short_Selling,  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
    #         "average_price_amplitude_date_transaction" => y_amplitude,  # 兩兩次對衝交易日成交價振幅平方和，均值;
    #         "Long_Position_average_price_amplitude_date_transaction" => y_amplitude_Long_Position,  # 兩兩次對衝交易日成交價振幅平方和，均值;
    #         "Short_Selling_average_price_amplitude_date_transaction" => y_amplitude_Short_Selling,  # 兩兩次對衝交易日成交價振幅平方和，均值;
    #         "Long_Position_price_amplitude_date_transaction" => y_D_Long_Position,  # 兩次對衝交易日成交價振幅平方和，向量;
    #         "Short_Selling_price_amplitude_date_transaction" => y_D_Short_Selling,  # 兩次對衝交易日成交價振幅平方和，向量;
    #         "average_volume_turnover_date_transaction" => y_turnover,  # 兩次對衝交易日成交量（換手率）均值;
    #         "Long_Position_average_volume_turnover_date_transaction" => y_turnover_Long_Position,  # 兩次對衝交易日成交量（換手率）均值;
    #         "Short_Selling_average_volume_turnover_date_transaction" => y_turnover_Short_Selling,  # 兩次對衝交易日成交量（換手率）均值;
    #         "Long_Position_volume_turnover_date_transaction" => y_E_Long_Position,  # 兩次對衝交易日成交量（換手率）向量;
    #         "Short_Selling_volume_turnover_date_transaction" => y_E_Short_Selling,  # 兩次對衝交易日成交量（換手率）向量;
    #         "average_date_transaction_between" => y_date_transaction_between,  # 兩次對衝交易間隔日長，均值;
    #         "Long_Position_average_date_transaction_between" => y_date_transaction_between_Long_Position,  # 兩次對衝交易間隔日長，均值;
    #         "Short_Selling_average_date_transaction_between" => y_date_transaction_between_Short_Selling,  # 兩次對衝交易間隔日長，均值;
    #         "Long_Position_date_transaction_between" => y_C_Long_Position,  # 兩次對衝交易間隔日長，向量;
    #         "Short_Selling_date_transaction_between" => y_C_Short_Selling,  # 兩次對衝交易間隔日長，向量;
    #         "Long_Position_date_transaction" => y_F_Long_Position,  # 按規則執行交易的日期，向量;
    #         "Short_Selling_date_transaction" => y_F_Short_Selling,  # 按規則執行交易的日期，向量;
    #         "P1_Array" => P1_Array,  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
    #         "revenue_and_expenditure_records_date_transaction" => y_G,  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
    #         "weight_MarketTiming" => weight_MarketTiming_Dict  # 擇時權重，每兩次對衝交易的盈利概率占比;
    #     )
    # );
    return result;
end
# MarketTiming_f_fit_model(x, P) = (MarketTiming_fit_model(x[1], P[1], P[2], P[3], P[4], x[2], x[3], x[4]););
# 必須將自變量作爲第一個參數，將待估參數作爲單獨的數組參數;
# 應變量 y 為執行交易規則之後獲得利潤;
# 自變量 x 為日棒缐（K Line Days）數據;
# 參數 P[1] 為觀察收益率歷史向前推的交易日長度，整型（Core.Int64），離散型變量;
# 參數 P[2] 為買入閾值，浮點型（Core.Float64），連續型變量;
# 參數 P[3] 為賣出閾值，浮點型（Core.Float64），連續型變量;


# 擇時模型參數的優化函數（Optimization）;
function MarketTiming(
    ;training_data::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}(),
    testing_data::Base.Dict{Core.String, Core.Any} = training_data,
    Pdata_0 = Core.Array{Core.Any, 1}(),  # Core.Array{Core.Union{Core.Int64, Core.Float64}, 1}[Core.Int64(), Core.Float64(), Core.Float64(), Core.Float64()],
    weight = Core.Array{Core.Any, 1}(),  # [Core.Float64(1.0) for i in 1:Base.length(training_data)],
    Plower = [-Base.Inf, -Base.Inf, -Base.Inf, -Base.Inf],  # ::Core.Array{Core.Any, 1}  # Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}
    Pupper = [+Base.Inf, +Base.Inf, +Base.Inf, +Base.Inf],  # ::Core.Array{Core.Any, 1}  # Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}
    MarketTiming_fit_model = (arguments) -> begin return arguments; end,
    Quantitative_Indicators_Function = (arguments) -> begin return arguments; end,
    investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
) ::Base.Dict{Core.String, Core.Any}

    resultDict = Base.Dict{Core.String, Core.Any}();

    # 讀取從函數參數傳入的訓練數據集;
    # training_date_transaction = Core.Array{Dates.Date, 1}();  # 訓練集數據交易日期;
    # training_opening_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日首筆成交價（開盤價）;
    # training_close_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日尾筆成交價（收盤價）;
    # training_low_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日最低成交價;
    # training_high_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日最高成交價;
    # training_turnover_volume = Core.Array{Core.Union{Core.UInt64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日總成交量;
    # training_turnover_amount = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日總成交金額;
    # training_turnover_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據交易日換手率;
    # training_price_earnings = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據市盈率;
    # training_book_value_per_share = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集數據净值;
    trainingData = Base.Dict{Core.String, Core.Any}();
    if Base.isa(training_data, Base.Dict) && Base.length(training_data) > 0

        trainingData = training_data;

        # if Base.haskey(training_data, "date_transaction") && Base.length(training_data["date_transaction"]) > 0
        #     training_date_transaction = training_data["date_transaction"];
        # end
        # if Base.haskey(training_data, "turnover_volume") && Base.length(training_data["turnover_volume"]) > 0
        #     training_turnover_volume = training_data["turnover_volume"];
        # end
        # if Base.haskey(training_data, "turnover_amount") && Base.length(training_data["turnover_amount"]) > 0
        #     training_turnover_amount = training_data["turnover_amount"];
        # end
        # if Base.haskey(training_data, "opening_price") && Base.length(training_data["opening_price"]) > 0
        #     training_opening_price = training_data["opening_price"];
        # end
        # if Base.haskey(training_data, "close_price") && Base.length(training_data["close_price"]) > 0
        #     training_close_price = training_data["close_price"];
        # end
        # if Base.haskey(training_data, "low_price") && Base.length(training_data["low_price"]) > 0
        #     training_low_price = training_data["low_price"];
        # end
        # if Base.haskey(training_data, "high_price") && Base.length(training_data["high_price"]) > 0
        #     training_high_price = training_data["high_price"];
        # end
        # if Base.haskey(training_data, "turnover_rate") && Base.length(training_data["turnover_rate"]) > 0
        #     training_turnover_rate = training_data["turnover_rate"];
        # end
        # if Base.haskey(training_data, "price_earnings") && Base.length(training_data["price_earnings"]) > 0
        #     training_price_earnings = training_data["price_earnings"];
        # end
        # if Base.haskey(training_data, "book_value_per_share") && Base.length(training_data["book_value_per_share"]) > 0
        #     training_book_value_per_share = training_data["book_value_per_share"];
        # end

        # # 遍歷字典的鍵:值對;
        # for (key, value) in training_data
        #     # println("Key: $key, Value: $value");

        #     # date_i = key;
        #     # date_i = Dates.Date(date_i);
        #     # # if Core.isa(key, Core.String)
        #     # #     # key === "" # Base.occursin("=", key)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     # #     date_i = key;
        #     # #     # date_i = Base.string(key);
        #     # #     date_i = Dates.Date(date_i);
        #     # # elseif key <: Core.UInt
        #     # #     # date_i = Core.UInt64(key);
        #     # #     # the_Unix_time = Dates.datetime2unix(now_day);  # 1.723206581518e9 seconds  # 轉換爲時間戳;
        #     # #     # the_date_time = Dates.unix2datetime(the_Unix_time);  # 2024-08-09T12:29:41.518  # 將時間戳轉換爲時間對象;
        #     # #     date_i = Dates.unix2datetime(key);  # 將時間戳轉換爲時間對象;
        #     # # elseif Core.isa(key, Dates.Date)
        #     # #     date_i = key;
        #     # # else
        #     # # end
        #     # Base.push!(training_date_transaction, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     # if Base.isa(value, Base.Dict) && Base.length(value) > 0
        #     #     for (key_1, value_1) in value
        #     #         if Base.string(key_1) === Base.string("turnover_volume")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.UInt
        #     #             # #     date_i = Core.UInt64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_turnover_volume, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("turnover_amount")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_turnover_amount, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("opening_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_opening_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("close_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_close_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("low_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_low_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("high_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_high_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("turnover_rate")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_turnover_rate, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("price_earnings")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_price_earnings, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("book_value_per_share")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(training_book_value_per_share, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #     end
        #     # end

        #     # if Base.string(key) === Base.string("date_transaction")
        #     #     training_date_transaction = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string(value[i]);
        #     #     #         # # elseif value[i] <: Core.UInt
        #     #     #         # #     # date_i = Core.UInt64(value[i]);
        #     #     #         # #     # the_Unix_time = Dates.datetime2unix(now_day);  # 1.723206581518e9 seconds  # 轉換爲時間戳;
        #     #     #         # #     # the_date_time = Dates.unix2datetime(the_Unix_time);  # 2024-08-09T12:29:41.518  # 將時間戳轉換爲時間對象;
        #     #     #         # #     date_i = Dates.unix2datetime(value[i]);  # 將時間戳轉換爲時間對象;
        #     #     #         # # elseif Core.isa(value[i], Dates.Date)
        #     #     #         # #     date_i = Dates.Date(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_date_transaction, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_date_transaction = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("turnover_volume")
        #     #     training_turnover_volume = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.UInt
        #     #     #         # #     date_i = Core.UInt64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_turnover_volume, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_turnover_volume = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("turnover_amount")
        #     #     training_turnover_amount = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_turnover_amount, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_turnover_amount = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("opening_price")
        #     #     training_opening_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_opening_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_opening_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("close_price")
        #     #     training_close_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_close_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_close_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("low_price")
        #     #     training_low_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_low_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_low_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("high_price")
        #     #     training_high_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_high_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_high_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("turnover_rate")
        #     #     training_turnover_rate = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_turnover_rate, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_turnover_rate = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("price_earnings")
        #     #     training_price_earnings = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_price_earnings, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_price_earnings = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("book_value_per_share")
        #     #     training_book_value_per_share = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(training_book_value_per_share, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     training_book_value_per_share = value;
        #     #     # end
        #     # end
        # end
        # # 遍歷字典的鍵;
        # for value in values(training_data)
        #     println("Value: $value")
        # end
        # # 遍歷字典的值;
        # for key in keys(training_data)
        #     println("Key: $key")
        # end
    end
    # println(trainingData);

    # 計算訓練集日棒缐（K Line Daily）數據本徵（characteristic）;
    if Base.isa(trainingData, Base.Dict) && Base.length(trainingData) > 0

        # 求解各股票裏的最長交易天數;
        # 交易過股票的總隻數，求解各股票裏的最長交易天數;
        maximum_PickStock_transaction_training = Core.Int64(0);  # 交易過股票的總隻數;
        maximum_dates_transaction_training = Core.Int64(0);  # 各股票裏的最長交易天數;
        minimum_dates_transaction_training = Core.Int64(0);  # 各股票裏的最短交易天數;

        # 交易過股票的總隻數，函數 Base.keys(Dict) 表示獲取字典的所有 key 值，返回值爲字符串向量（Base.Vector）;
        maximum_PickStock_transaction_training_2 = Core.Int64(Base.length(Base.keys(trainingData)));  # 交易過股票的總隻數;
        maximum_PickStock_transaction_training *= Core.Int64(0);
        maximum_PickStock_transaction_training += Core.Int64(maximum_PickStock_transaction_training_2);
        # println(maximum_PickStock_transaction_training);

        dates_transaction_Array_training = Core.Array{Core.Int64, 1}();
        # 遍歷字典的鍵:值對;
        for (key, value) in trainingData
            # println("Key: $key, Value: $value");
            if Base.isa(value, Base.Dict)
                if Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array
                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                    Base.push!(dates_transaction_Array_training, Core.Int64(Base.length(value["date_transaction"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                    # 篩選最長交易天數;
                    if Core.Int64(Base.length(value["date_transaction"])) > Core.Int64(maximum_dates_transaction_training)
                        maximum_dates_transaction_training_2 = Core.Int64(Base.length(value["date_transaction"]));
                        maximum_dates_transaction_training *= Core.Int64(0);
                        maximum_dates_transaction_training += Core.Int64(maximum_dates_transaction_training_2);
                    end
                end
                if Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array
                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                    Base.push!(dates_transaction_Array_training, Core.Int64(Base.length(value["turnover_volume"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                    # 篩選最長交易天數;
                    if Core.Int64(Base.length(value["turnover_volume"])) > Core.Int64(maximum_dates_transaction_training)
                        maximum_dates_transaction_training_2 = Core.Int64(Base.length(value["turnover_volume"]));
                        maximum_dates_transaction_training *= Core.Int64(0);
                        maximum_dates_transaction_training += Core.Int64(maximum_dates_transaction_training_2);
                    end
                end
                if Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array
                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                    Base.push!(dates_transaction_Array_training, Core.Int64(Base.length(value["opening_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                    # 篩選最長交易天數;
                    if Core.Int64(Base.length(value["opening_price"])) > Core.Int64(maximum_dates_transaction_training)
                        maximum_dates_transaction_training_2 = Core.Int64(Base.length(value["opening_price"]));
                        maximum_dates_transaction_training *= Core.Int64(0);
                        maximum_dates_transaction_training += Core.Int64(maximum_dates_transaction_training_2);
                    end
                end
                if Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array
                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                    Base.push!(dates_transaction_Array_training, Core.Int64(Base.length(value["close_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                    # 篩選最長交易天數;
                    if Core.Int64(Base.length(value["close_price"])) > Core.Int64(maximum_dates_transaction_training)
                        maximum_dates_transaction_training_2 = Core.Int64(Base.length(value["close_price"]));
                        maximum_dates_transaction_training *= Core.Int64(0);
                        maximum_dates_transaction_training += Core.Int64(maximum_dates_transaction_training_2);
                    end
                end
                if Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array
                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                    Base.push!(dates_transaction_Array_training, Core.Int64(Base.length(value["low_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                    # 篩選最長交易天數;
                    if Core.Int64(Base.length(value["low_price"])) > Core.Int64(maximum_dates_transaction_training)
                        maximum_dates_transaction_training_2 = Core.Int64(Base.length(value["low_price"]));
                        maximum_dates_transaction_training *= Core.Int64(0);
                        maximum_dates_transaction_training += Core.Int64(maximum_dates_transaction_training_2);
                    end
                end
                if Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array
                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                    Base.push!(dates_transaction_Array_training, Core.Int64(Base.length(value["high_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                    # 篩選最長交易天數;
                    if Core.Int64(Base.length(value["high_price"])) > Core.Int64(maximum_dates_transaction_training)
                        maximum_dates_transaction_training_2 = Core.Int64(Base.length(value["high_price"]));
                        maximum_dates_transaction_training *= Core.Int64(0);
                        maximum_dates_transaction_training += Core.Int64(maximum_dates_transaction_training_2);
                    end
                end
            end
        end
        # println(maximum_dates_transaction_training);

        if Base.length(dates_transaction_Array_training) > 0
            minimum_dates_transaction_training_2 = Core.Int64(Base.findmin(dates_transaction_Array_training)[1]);
            minimum_dates_transaction_training *= Core.Int64(0);
            minimum_dates_transaction_training += Core.Int64(minimum_dates_transaction_training_2);
        end
        # println(minimum_dates_transaction_training);
        dates_transaction_Array_training = Core.nothing;  # 釋放内存;

        # 求解量化規則使用的各項指標數值;
        for (key, value) in trainingData

            # 計算訓練集日棒缐（K Line Daily）數據本徵（characteristic）;
            training_focus = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的重心值（Focus）;
            training_amplitude = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
            training_amplitude_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
            training_opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
            training_closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
            training_low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日最低成交價標準化;
            training_high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日最高成交價標準化;
            training_turnover_volume_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
            training_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
            training_closing_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
            training_closing_minus_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
            training_high_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
            training_low_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
            if Base.isa(value, Base.Dict) && Base.length(value) > 0

                if (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array && Base.length(value["turnover_volume"]) > 0) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array && Base.length(value["opening_price"]) > 0) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array && Base.length(value["close_price"]) > 0) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array && Base.length(value["low_price"]) > 0) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array && Base.length(value["high_price"]) > 0)

                    # 計算訓練集日棒缐（K Line Daily）數據的最少數目（minimum count time series）;
                    # training_minimum_count_time_series::Core.UInt64 = Core.UInt64(0);
                    # training_minimum_count_time_series = (+Base.Inf);
                    training_minimum_count_time_series = Core.UInt64(Base.findmin([Base.length(value["turnover_volume"]), Base.length(value["opening_price"]), Base.length(value["close_price"]), Base.length(value["low_price"]), Base.length(value["high_price"])])[1]);
                    # training_minimum_count_time_series = Core.UInt64(Base.findmin([Base.length(training_turnover_volume), Base.length(training_opening_price), Base.length(training_close_price), Base.length(training_low_price), Base.length(training_high_price)])[1]);

                    if training_minimum_count_time_series > 0

                        # 計算訓練集日棒缐（K Line Daily）數據本徵（characteristic）;
                        # training_focus = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                        # training_amplitude = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                        # training_amplitude_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                        # training_opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                        # training_closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                        # training_low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                        # training_high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                        # training_turnover_volume_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
                        # training_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                        # training_closing_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                        # training_closing_minus_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                        # training_high_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                        # training_low_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                        for i = 1:training_minimum_count_time_series

                            # 計算日棒缐（K Line Daily）數據的重心值（Focus）序列;
                            date_i_focus = Statistics.mean([value["opening_price"][i], value["close_price"][i], value["low_price"][i], value["high_price"][i]]);
                            date_i_focus = Core.Float64(date_i_focus);
                            Base.push!(training_focus, date_i_focus);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 計算日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）序列;
                            date_i_amplitude = Statistics.std(
                                [
                                    value["opening_price"][i],
                                    value["close_price"][i],
                                    value["low_price"][i],
                                    value["high_price"][i]
                                ];
                                corrected = true
                            );
                            # if Core.Int64(Base.length([opening_price[i], close_price[i], low_price[i], high_price[i]])) === Core.Int64(1)
                            #     date_i_amplitude = Statistics.std([opening_price[i], close_price[i], low_price[i], high_price[i]]; corrected=false);
                            # elseif Core.Int64(Base.length([opening_price[i], close_price[i], low_price[i], high_price[i]])) > Core.Int64(1)
                            #     date_i_amplitude = Statistics.std([opening_price[i], close_price[i], low_price[i], high_price[i]]; corrected=true);
                            # else
                            # end
                            date_i_amplitude = Core.Float64(date_i_amplitude);
                            Base.push!(training_amplitude, date_i_amplitude);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 計算日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）序列;
                            date_i_amplitude_rate = Core.Float64(date_i_amplitude);  # Base.missing;  # Core.nothing;  # +Base.Inf;
                            if Core.Float64(date_i_focus) === Core.Float64(0.0)
                                date_i_amplitude_rate = (+Base.Inf);  # Core.Float64(date_i_amplitude);
                            else
                                date_i_amplitude_rate = Core.Float64(date_i_amplitude / date_i_focus);
                            end
                            Base.push!(training_amplitude_rate, date_i_amplitude_rate);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 訓練集日棒缐（K Line Daily）數據標準化（Standardization）轉換;
                            # training_opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                            # training_closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                            # training_low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                            # training_high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 訓練集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                            date_i_opening_price_Standardization = value["opening_price"][i];
                            date_i_closing_price_Standardization = value["close_price"][i];
                            date_i_low_price_Standardization = value["low_price"][i];
                            date_i_high_price_Standardization = value["high_price"][i];
                            if Core.Float64(value["amplitude"][i]) === Core.Float64(0.0)
                                date_i_opening_price_Standardization = Core.Float64(value["opening_price"][i] - value["focus"][i]);
                                date_i_closing_price_Standardization = Core.Float64(value["close_price"][i] - value["focus"][i]);
                                date_i_low_price_Standardization = Core.Float64(value["low_price"][i] - value["focus"][i]);
                                date_i_high_price_Standardization = Core.Float64(value["high_price"][i] - value["focus"][i]);
                            else
                                date_i_opening_price_Standardization = Core.Float64((value["opening_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                                date_i_closing_price_Standardization = Core.Float64((value["close_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                                date_i_low_price_Standardization = Core.Float64((value["low_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                                date_i_high_price_Standardization = Core.Float64((value["high_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                            end
                            Base.push!(training_opening_price_Standardization, date_i_opening_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                            Base.push!(training_closing_price_Standardization, date_i_closing_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                            Base.push!(training_low_price_Standardization, date_i_low_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                            Base.push!(training_high_price_Standardization, date_i_high_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 計算相鄰兩個交易日之間成交股票數量的變化率值的序列，並保存入 1 維數組;
                            # training_turnover_volume_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間成交股票數量的變化率值;x_growth_rate = Base.missing;
                            if Core.Int64(i) < Core.Int64(2)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            else
                                if Core.Int64(value["turnover_volume"][i - 1]) !== Core.Int64(0)
                                    x_growth_rate = Core.Float64(value["turnover_volume"][i] / value["turnover_volume"][i - 1]) - Core.Float64(1.0);
                                elseif Core.Int64(value["turnover_volume"][i - 1]) === Core.Int64(0) && Core.Int64(value["turnover_volume"][i]) === Core.Int64(0)
                                    x_growth_rate = Core.Float64(0.0);
                                    # x_growth_rate = Base.missing;
                                    # x_growth_rate = Core.nothing;
                                elseif Core.Int64(value["turnover_volume"][i - 1]) === Core.Int64(0) && Core.Int64(value["turnover_volume"][i]) > Core.Int64(0)
                                    x_growth_rate = (+Base.Inf);
                                elseif Core.Int64(value["turnover_volume"][i - 1]) === Core.Int64(0) && Core.Int64(value["turnover_volume"][i]) < Core.Int64(0)
                                    x_growth_rate = (-Base.Inf);
                                else
                                end
                            end
                            # println(x_growth_rate);
                            Base.push!(training_turnover_volume_growth_rate, x_growth_rate);  # 使用 push! 函數在數組末尾追加推入新元;

                            # 計算相鄰兩個交易日之間開盤股票價格的變化率值的序列，並保存入 1 維數組;
                            # training_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                            x_growth_rate = Base.missing;
                            if Core.Int64(i) < Core.Int64(2)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            else
                                if Core.Float64(value["opening_price"][i - 1]) !== Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(value["opening_price"][i] / value["opening_price"][i - 1]) - Core.Float64(1.0);
                                elseif Core.Float64(value["opening_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["opening_price"][i]) === Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(0.0);
                                    # x_growth_rate = Base.missing;
                                    # x_growth_rate = Core.nothing;
                                elseif Core.Float64(value["opening_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["opening_price"][i]) > Core.Float64(0.0)
                                    x_growth_rate = (+Base.Inf);
                                elseif Core.Float64(value["opening_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["opening_price"][i]) < Core.Float64(0.0)
                                    x_growth_rate = (-Base.Inf);
                                else
                                end
                            end
                            # println(x_growth_rate);
                            Base.push!(training_opening_price_growth_rate, x_growth_rate);

                            # 計算相鄰兩個交易日之間收盤股票價格的變化率值的序列，並保存入 1 維數組;
                            # training_closing_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                            x_growth_rate = Base.missing;
                            if Core.Int64(i) < Core.Int64(2)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            else
                                if Core.Float64(value["close_price"][i - 1]) !== Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(value["close_price"][i] / value["close_price"][i - 1]) - Core.Float64(1.0);
                                elseif Core.Float64(value["close_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) === Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(0.0);
                                    # x_growth_rate = Base.missing;
                                    # x_growth_rate = Core.nothing;
                                elseif Core.Float64(value["close_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) > Core.Float64(0.0)
                                    x_growth_rate = (+Base.Inf);
                                elseif Core.Float64(value["close_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) < Core.Float64(0.0)
                                    x_growth_rate = (-Base.Inf);
                                else
                                end
                            end
                            # println(x_growth_rate);
                            Base.push!(training_closing_price_growth_rate, x_growth_rate);

                            # 計算每個交易日股票收盤價格減去開盤價格的變化率值的序列，並保存入 1 維數組;
                            # training_closing_minus_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                            x_growth_rate = Base.missing;
                            if Core.Float64(value["opening_price"][i]) !== Core.Float64(0.0)
                                x_growth_rate = Core.Float64(value["close_price"][i] / value["opening_price"][i]) - Core.Float64(1.0);
                            elseif Core.Float64(value["opening_price"][i]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) === Core.Float64(0.0)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            elseif Core.Float64(value["opening_price"][i]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) > Core.Float64(0.0)
                                x_growth_rate = (+Base.Inf);
                            elseif Core.Float64(value["opening_price"][i]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) < Core.Float64(0.0)
                                x_growth_rate = (-Base.Inf);
                            else
                            end
                            # println(x_growth_rate);
                            Base.push!(training_closing_minus_opening_price_growth_rate, x_growth_rate);  # 使用 push! 函數在數組末尾追加推入新元;

                            # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值的序列，並保存入 1 維數組;
                            # training_high_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                            x_growth_rate = Base.missing;
                            if Core.Float64(value["high_price"][i]) !== Core.Float64(0.0)
                                x_growth_rate = Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) / Core.Float64(value["high_price"][i]);
                            elseif Core.Float64(value["high_price"][i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            elseif Core.Float64(value["high_price"][i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) > Core.Float64(0.0)
                                x_growth_rate = (+Base.Inf);
                            elseif Core.Float64(value["high_price"][i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) < Core.Float64(0.0)
                                x_growth_rate = (-Base.Inf);
                            else
                            end
                            # println(x_growth_rate);
                            Base.push!(training_high_price_proportion, x_growth_rate);

                            # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值的序列，並保存入 1 維數組;
                            # training_low_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                            x_growth_rate = Base.missing;
                            if Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) !== Core.Float64(0.0)
                                x_growth_rate = Core.Float64(value["low_price"][i]) / Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]);
                            elseif Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0) && Core.Float64(value["low_price"][i]) === Core.Float64(0.0)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            elseif Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0) && Core.Float64(value["low_price"][i]) > Core.Float64(0.0)
                                x_growth_rate = (+Base.Inf);
                            elseif Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0) && Core.Float64(value["low_price"][i]) < Core.Float64(0.0)
                                x_growth_rate = (-Base.Inf);
                            else
                            end
                            # println(x_growth_rate);
                            Base.push!(training_low_price_proportion, x_growth_rate);
                        end
                        # trainingData[key]["focus"] = training_focus;
                        # trainingData[key]["amplitude"] = training_amplitude;
                        # trainingData[key]["amplitude_rate"] = training_amplitude_rate;
                        # trainingData[key]["opening_price_Standardization"] = training_opening_price_Standardization;
                        # trainingData[key]["closing_price_Standardization"] = training_closing_price_Standardization;
                        # trainingData[key]["low_price_Standardization"] = training_low_price_Standardization;
                        # trainingData[key]["high_price_Standardization"] = training_high_price_Standardization;
                        # trainingData[key]["turnover_volume_growth_rate"] = training_turnover_volume_growth_rate;
                        # trainingData[key]["opening_price_growth_rate"] = training_opening_price_growth_rate;
                        # trainingData[key]["closing_price_growth_rate"] = training_closing_price_growth_rate;
                        # trainingData[key]["closing_minus_opening_price_growth_rate"] = training_closing_minus_opening_price_growth_rate;
                        # trainingData[key]["high_price_proportion"] = training_high_price_proportion;
                        # trainingData[key]["low_price_proportion"] = training_low_price_proportion;
                        # # 釋放内存;
                        # training_focus = Core.nothing;
                        # training_amplitude = Core.nothing;
                        # training_amplitude_rate = Core.nothing;
                        # training_opening_price_Standardization = Core.nothing;
                        # training_closing_price_Standardization = Core.nothing;
                        # training_low_price_Standardization = Core.nothing;
                        # training_high_price_Standardization = Core.nothing;
                        # training_turnover_volume_growth_rate = Core.nothing;
                        # training_opening_price_growth_rate = Core.nothing;
                        # training_closing_price_growth_rate = Core.nothing;
                        # training_closing_minus_opening_price_growth_rate = Core.nothing;
                        # training_high_price_proportion = Core.nothing;
                        # training_low_price_proportion = Core.nothing;
                    end
                end

                # 從 trainingData 讀出;
                if Base.haskey(value, "focus") && Base.typeof(value["focus"]) <: Core.Array
                    training_focus = value["focus"];  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                end
                if Base.haskey(value, "amplitude") && Base.typeof(value["amplitude"]) <: Core.Array
                    training_amplitude = value["amplitude"];  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                end
                if Base.haskey(value, "amplitude_rate") && Base.typeof(value["amplitude_rate"]) <: Core.Array
                    training_amplitude_rate = value["amplitude_rate"];  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                end
                if Base.haskey(value, "opening_price_Standardization") && Base.typeof(value["opening_price_Standardization"]) <: Core.Array
                    training_opening_price_Standardization = value["opening_price_Standardization"];  # 訓練集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                end
                if Base.haskey(value, "closing_price_Standardization") && Base.typeof(value["closing_price_Standardization"]) <: Core.Array
                    training_closing_price_Standardization = value["closing_price_Standardization"];  # 訓練集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                end
                if Base.haskey(value, "low_price_Standardization") && Base.typeof(value["low_price_Standardization"]) <: Core.Array
                    training_low_price_Standardization = value["low_price_Standardization"];  # 訓練集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                end
                if Base.haskey(value, "high_price_Standardization") && Base.typeof(value["high_price_Standardization"]) <: Core.Array
                    training_high_price_Standardization = value["high_price_Standardization"];  # 訓練集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                end
                if Base.haskey(value, "turnover_volume_growth_rate") && Base.typeof(value["turnover_volume_growth_rate"]) <: Core.Array
                    training_turnover_volume_growth_rate = value["turnover_volume_growth_rate"];  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
                end
                if Base.haskey(value, "opening_price_growth_rate") && Base.typeof(value["opening_price_growth_rate"]) <: Core.Array
                    training_opening_price_growth_rate = value["opening_price_growth_rate"];  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                end
                if Base.haskey(value, "closing_price_growth_rate") && Base.typeof(value["closing_price_growth_rate"]) <: Core.Array
                    training_closing_price_growth_rate = value["closing_price_growth_rate"];  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                end
                if Base.haskey(value, "closing_minus_opening_price_growth_rate") && Base.typeof(value["closing_minus_opening_price_growth_rate"]) <: Core.Array
                    training_closing_minus_opening_price_growth_rate = value["closing_minus_opening_price_growth_rate"];  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                end
                if Base.haskey(value, "high_price_proportion") && Base.typeof(value["high_price_proportion"]) <: Core.Array
                    training_high_price_proportion = value["high_price_proportion"];  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                end
                if Base.haskey(value, "low_price_proportion") && Base.typeof(value["low_price_proportion"]) <: Core.Array
                    training_low_price_proportion = value["low_price_proportion"];  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                end

                # # 向 trainingData 寫入;
                # if !Base.haskey(value, "focus")
                #     trainingData[key]["focus"] = training_focus;  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                # end
                # if !Base.haskey(value, "amplitude")
                #     trainingData[key]["amplitude"] = training_amplitude;  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                # end
                # if !Base.haskey(value, "amplitude_rate")
                #     trainingData[key]["amplitude_rate"] = training_amplitude_rate;  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                # end
                # if !Base.haskey(value, "opening_price_Standardization")
                #     trainingData[key]["opening_price_Standardization"] = training_opening_price_Standardization;  # 訓練集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                # end
                # if !Base.haskey(value, "closing_price_Standardization")
                #     trainingData[key]["closing_price_Standardization"] = training_closing_price_Standardization;  # 訓練集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                # end
                # if !Base.haskey(value, "low_price_Standardization")
                #     trainingData[key]["low_price_Standardization"] = training_low_price_Standardization;  # 訓練集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                # end
                # if !Base.haskey(value, "high_price_Standardization")
                #     trainingData[key]["high_price_Standardization"] = training_high_price_Standardization;  # 訓練集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                # end
                # if !Base.haskey(value, "turnover_volume_growth_rate")
                #     trainingData[key]["turnover_volume_growth_rate"] = training_turnover_volume_growth_rate;  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
                # end
                # if !Base.haskey(value, "opening_price_growth_rate")
                #     trainingData[key]["opening_price_growth_rate"] = training_opening_price_growth_rate;  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                # end
                # if !Base.haskey(value, "closing_price_growth_rate")
                #     trainingData[key]["closing_price_growth_rate"] = training_closing_price_growth_rate;  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                # end
                # if !Base.haskey(value, "closing_minus_opening_price_growth_rate")
                #     trainingData[key]["closing_minus_opening_price_growth_rate"] = training_closing_minus_opening_price_growth_rate;  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                # end
                # if !Base.haskey(value, "high_price_proportion")
                #     trainingData[key]["high_price_proportion"] = training_high_price_proportion;  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                # end
                # if !Base.haskey(value, "low_price_proportion")
                #     trainingData[key]["low_price_proportion"] = training_low_price_proportion;  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                # end
            end

            YdataMean = training_focus;
            YdataSTD = training_amplitude_rate;  # training_amplitude;
            Xdata = [Core.UInt64(i) for i in 1:Base.length(YdataMean)];
            if Base.typeof(training_focus) <: Core.Array && Base.typeof(training_amplitude) <: Core.Array && Base.typeof(training_amplitude_rate) <: Core.Array
                # 觀測值（Observation）;
                # 求 Ydata 均值向量;
                YdataMean = training_focus;
                # YdataMean = Core.Array{Core.Float64, 1}();
                # for i = 1:Base.length(Ydata)
                #     if Base.typeof(Ydata[i]) <: Core.Array
                #         yMean = Core.Float64(Statistics.mean(Ydata[i]));
                #         Base.push!(YdataMean, yMean);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     else
                #         yMean = Core.Float64(Ydata[i]);
                #         Base.push!(YdataMean, yMean);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     end
                # end
                # println(YdataMean);
                # # 求 Ydata 標準差向量;
                # YdataSTD = training_amplitude;
                # # YdataSTD = Core.Array{Core.Float64, 1}();
                # # for i = 1:Base.length(Ydata)
                # #     if Base.typeof(Ydata[i]) <: Core.Array
                # #         if Core.Int64(Base.length(Ydata[i])) === Core.Int64(1)
                # #             ySTD = Core.Float64(Statistics.std(Ydata[i]; corrected=false));
                # #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                # #         elseif Core.Int64(Base.length(Ydata[i])) > Core.Int64(1)
                # #             ySTD = Core.Float64(Statistics.std(Ydata[i]; corrected=true));
                # #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                # #         end
                # #     else
                # #         ySTD = Core.Float64(0.0);
                # #         Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                # #     end
                # # end
                # 求 Ydata 變異係數（與重心比較的相對標準差）向量;
                YdataSTD = training_amplitude_rate;
                # YdataSTD = Core.Array{Core.Float64, 1}();
                # for i = 1:Base.length(Ydata)
                #     if Base.typeof(Ydata[i]) <: Core.Array
                #         if Core.Int64(Base.length(Ydata[i])) === Core.Int64(1)
                #             ySTD = Core.Float64(Core.Float64(Statistics.std(Ydata[i]; corrected=false)) / Core.Float64(Statistics.mean(Ydata[i])));
                #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                #         elseif Core.Int64(Base.length(Ydata[i])) > Core.Int64(1)
                #             ySTD = Core.Float64(Core.Float64(Statistics.std(Ydata[i]; corrected=true)) / Core.Float64(Statistics.mean(Ydata[i])));
                #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                #         end
                #     else
                #         ySTD = Core.Float64(0.0);
                #         Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     end
                # end
                # println(YdataSTD);
                # 求 Xdata 均值向量;
                Xdata = [Core.UInt64(i) for i in 1:Base.length(YdataMean)];
                # Xdata = training_date_transaction;
                # Xdata = value["date_transaction"];
                # println(Xdata);
            end

            # 擬合參數預設值（Parameter default）;
            if (Base.typeof(YdataMean) <: Core.Array && Base.length(YdataMean) > 0) && (Base.typeof(YdataSTD) <: Core.Array && Base.length(YdataSTD) > 0) && (Base.typeof(Xdata) <: Core.Array && Base.length(Xdata) > 0)

                # 擬合參數（Parameter）;
                # 參數初始值（Initialization）;
                Pdata_0_P1 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        Pdata_0_P1_I = Core.Float64(YdataMean[i] / Xdata[i]^3);
                    else
                        Pdata_0_P1_I = Core.Float64(YdataMean[i] - Xdata[i]^3);
                    end
                    Base.push!(Pdata_0_P1, Pdata_0_P1_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P1 = Core.Float64(Statistics.mean(Pdata_0_P1));
                # println(Pdata_0_P1);

                Pdata_0_P2 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        Pdata_0_P2_I = Core.Float64(YdataMean[i] / Xdata[i]^2);
                    else
                        Pdata_0_P2_I = Core.Float64(YdataMean[i] - Xdata[i]^2);
                    end
                    Base.push!(Pdata_0_P2, Pdata_0_P2_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P2 = Core.Float64(Statistics.mean(Pdata_0_P2));
                # println(Pdata_0_P2);

                Pdata_0_P3 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        Pdata_0_P3_I = Core.Float64(YdataMean[i] / Xdata[i]^1);
                    else
                        Pdata_0_P3_I = Core.Float64(YdataMean[i] - Xdata[i]^1);
                    end
                    Base.push!(Pdata_0_P3, Pdata_0_P3_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P3 = Core.Float64(Statistics.mean(Pdata_0_P3));
                # println(Pdata_0_P3);

                Pdata_0_P4 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        # 符號 / 表示常規除法，符號 % 表示除法取餘，等價於 Base.rem() 函數，符號 ÷ 表示除法取整，符號 * 表示乘法，符號 ^ 表示冪運算，符號 + 表示加法，符號 - 表示減法;
                        Pdata_0_P4_I_1 = Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Pdata_0_P3 * Xdata[i]^1)) * Core.Float64(Pdata_0_P3 * Xdata[i]^1));
                        Pdata_0_P4_I_2 = Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Pdata_0_P2 * Xdata[i]^2)) * Core.Float64(Pdata_0_P2 * Xdata[i]^2));
                        Pdata_0_P4_I_3 = Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Pdata_0_P1 * Xdata[i]^3)) * Core.Float64(Pdata_0_P1 * Xdata[i]^3));
                        Pdata_0_P4_I = Core.Float64(Pdata_0_P4_I_1 + Pdata_0_P4_I_2 + Pdata_0_P4_I_3);
                    else
                        Pdata_0_P4_I = Core.Float64(YdataMean[i] - Xdata[i]);
                    end
                    Base.push!(Pdata_0_P4, Pdata_0_P4_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P4 = Core.Float64(Statistics.mean(Pdata_0_P4));
                # println(Pdata_0_P4);

                # Pdata_0 = Core.Array{Core.Float64, 1}();
                # Pdata_0 = [
                #     Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^3) for i in 1:Base.length(YdataMean)])),
                #     Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^2) for i in 1:Base.length(YdataMean)])),
                #     Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^1) for i in 1:Base.length(YdataMean)])),
                #     Core.Float64(Statistics.mean([Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^1) for i in 1:Base.length(YdataMean)])) * Xdata[i]^1)) * Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^1) for i in 1:Base.length(YdataMean)])) * Xdata[i]^1)) for i in 1:Base.length(YdataMean)]) + Statistics.mean([Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^2) for i in 1:Base.length(YdataMean)])) * Xdata[i]^2)) * Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^2) for i in 1:Base.length(YdataMean)])) * Xdata[i]^2)) for i in 1:Base.length(YdataMean)]) + Statistics.mean([Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^3) for i in 1:Base.length(YdataMean)])) * Xdata[i]^3)) * Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^3) for i in 1:Base.length(YdataMean)])) * Xdata[i]^3)) for i in 1:Base.length(YdataMean)]))
                # ];
                if Core.Int64(Base.length(Pdata_0)) === Core.Int64(0)
                    Pdata_0 = [
                        Core.Int64(3),
                        Core.Float64(+0.1),
                        Core.Float64(-0.1),
                        Core.Float64(0.0)
                    ];
                    # Pdata_0 = [
                    #     Pdata_0_P1,
                    #     Pdata_0_P2,
                    #     Pdata_0_P3,
                    #     Pdata_0_P4
                    # ];
                end
                # println(Pdata_0);

                # # 參數值上下限;
                # # Plower = Core.Array{Core.Union{Core.Bool, Core.Float64, Core.Int64, Core.String}, 1}();
                # Plower = [
                #     -Base.Inf,  # P[1];
                #     -Base.Inf,  # P[2];
                #     -Base.Inf,  # P[3];
                #     -Base.Inf  # P[4];
                # ];
                if Core.Int64(Base.length(Plower)) === Core.Int64(0)
                    Plower = [
                        Core.Int64(1),  # -Base.Inf,  # P[1];
                        -Base.Inf,  # P[2];
                        -Base.Inf,  # P[3];
                        -Base.Inf  # P[4];
                    ];
                end
                if Core.Int64(Base.length(Plower)) === Core.Int64(1)
                    if Base.isinf(Plower[1]) && Plower[1] < Core.Float64(0.0)
                        Plower = [
                            Core.Int64(1),  # -Base.Inf,  # P[1];
                            -Base.Inf,  # P[2];
                            -Base.Inf,  # P[3];
                            -Base.Inf  # P[4];
                        ];
                    elseif Core.Float64(Plower[1]) < Core.Float64(1.0)
                        Plower = [
                            Core.Int64(1),  # -Base.Inf,  # P[1];
                            -Base.Inf,  # P[2];
                            -Base.Inf,  # P[3];
                            -Base.Inf  # P[4];
                        ];
                    else
                        Plower = [
                            Core.Int64(Base.round(Plower[1], digits = 0)),  # -Base.Inf,  # P[1];  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                            -Base.Inf,  # P[2];
                            -Base.Inf,  # P[3];
                            -Base.Inf  # P[4];
                        ];
                    end
                end
                if Core.Int64(Base.length(Plower)) > Core.Int64(1)
                    if Base.isinf(Plower[1]) && Plower[1] < Core.Float64(0.0)
                        Plower[1] = Core.Int64(1);  # -Base.Inf;  # P[1];
                    elseif Core.Float64(Plower[1]) < Core.Float64(1.0)
                        Plower[1] = Core.Int64(1);  # -Base.Inf;  # P[1];
                    else
                        Plower[1] = Core.Int64(Base.round(Plower[1], digits = 0));  # -Base.Inf;  # P[1];  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                    end
                end
                # # println(Plower);
                # # Pupper = Core.Array{Core.Union{Core.Bool, Core.Float64, Core.Int64, Core.String}, 1}()
                # Pupper = [
                #     +Base.Inf,  # P[1];
                #     +Base.Inf,  # P[2];
                #     +Base.Inf,  # P[3];
                #     +Base.Inf  # P[4];
                # ];
                if Core.Int64(Base.length(Pupper)) === Core.Int64(0)
                    Pupper = [
                        Core.Int64(Base.findmin([Base.length(value["turnover_volume"]), Base.length(value["opening_price"]), Base.length(value["close_price"]), Base.length(value["low_price"]), Base.length(value["high_price"])])[1]),  # Core.Int64(minimum_dates_transaction_training),  # Core.Int64(60),  # +Base.Inf,  # P[1];
                        +Base.Inf,  # P[2];
                        +Base.Inf,  # P[3];
                        +Base.Inf  # P[4];
                    ];
                end
                if Core.Int64(Base.length(Pupper)) === Core.Int64(1)
                    if Base.isinf(Pupper[1]) && Pupper[1] > Core.Float64(0.0)
                        Pupper = [
                            Core.Int64(Base.findmin([Base.length(value["turnover_volume"]), Base.length(value["opening_price"]), Base.length(value["close_price"]), Base.length(value["low_price"]), Base.length(value["high_price"])])[1]),  # Core.Int64(minimum_dates_transaction_training),  # +Base.Inf,  # P[1];
                            +Base.Inf,  # P[2];
                            +Base.Inf,  # P[3];
                            +Base.Inf  # P[4];
                        ];
                    elseif Core.Float64(Pupper[1]) < Core.Float64(1.0)
                        Pupper = [
                            Core.Int64(1),  # +Base.Inf,  # P[1];
                            +Base.Inf,  # P[2];
                            +Base.Inf,  # P[3];
                            +Base.Inf  # P[4];
                        ];
                    else
                        Pupper = [
                            Core.Int64(Base.round(Pupper[1], digits = 0)),  # +Base.Inf,  # P[1];  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                            +Base.Inf,  # P[2];
                            +Base.Inf,  # P[3];
                            +Base.Inf  # P[4];
                        ];
                    end
                end
                if Core.Int64(Base.length(Pupper)) > Core.Int64(1)
                    if Base.isinf(Pupper[1]) && Pupper[1] > Core.Float64(0.0)
                        Pupper[1] = Core.Int64(Base.findmin([Base.length(value["turnover_volume"]), Base.length(value["opening_price"]), Base.length(value["close_price"]), Base.length(value["low_price"]), Base.length(value["high_price"])])[1]);  # Core.Int64(minimum_dates_transaction_training);  # +Base.Inf;  # P[1];
                    elseif Core.Float64(Pupper[1]) < Core.Float64(1.0)
                        Pupper[1] = Core.Int64(1);  # +Base.Inf;  # P[1];
                    else
                        Pupper[1] = Core.Int64(Base.round(Pupper[1], digits = 0));  # +Base.Inf;  # P[1];  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                    end
                end
                # # println(Pupper);

                # 變量實測值擬合權重;
                # # weight = Core.Array{Core.Float64, 1}();
                # # 使用高斯核賦權法;
                # target = 2;  # 擬合模型之後的目標預測點，比如，設定爲 3 表示擬合出模型參數值之後，想要使用此模型預測 Xdata 中第 3 個位置附近的點的 Yvals 的直;
                # af = Core.Float64(0.9);  # 衰減因子 attenuation factor ，即權重值衰減的速率，af 值愈小，權重值衰減的愈快;
                # for i = 1:Base.length(YdataMean)
                #     wei = Base.exp((YdataMean[i] / YdataMean[target] - 1)^2 / ((-2) * af^2));
                #     Base.push!(weight, wei);  # 使用 push! 函數在數組末尾追加推入新元素;
                # end
                # # # 使用方差倒數值賦權法;
                # # for i = 1:Base.length(YdataSTD)
                # #     wei = 1 / YdataSTD[i];  # Statistics.std(Ydata[i]), Statistics.var(Ydata[i]);
                # #     Base.push!(weight, wei);  # 使用 push! 函數在數組末尾追加推入新元素;
                # # end
                if Core.Int64(Base.length(weight)) === Core.Int64(0)
                    weight = [Core.Float64(1.0) for i in 1:Base.length(YdataMean)];
                    # weight = [Core.Float64(1.0 / YdataMean[i]) for i in 1:Base.length(YdataMean)];  # 每日成交價振幅倒數;
                    # weight = [Core.Float64(training_turnover_rate[i]) for i in 1:Base.length(training_turnover_rate)];  # 每日成交量（換手率）;
                    # weight = [Core.Float64(1.0 / y_C[i]) for i in 1:Base.length(y_C)];  # 每次交易間隔日長的倒數;
                end
                # println(weight);

                # trainingData[key]["Pdata_0"] = Pdata_0;
                # trainingData[key]["Plower"] = Plower;
                # trainingData[key]["Pupper"] = Pupper;
                # trainingData[key]["weight"] = weight;
                # # 釋放内存;
                # Pdata_0 = Core.nothing;
                # Plower = Core.nothing;
                # Pupper = Core.nothing;
                # weight = Core.nothing;
            end

            # 優化（Optimization）求解;
            P1 = Core.Int64(3);  # Core.nothing;
            P2 = Core.Float64(+0.1);  # Core.nothing;
            P3 = Core.Float64(-0.1);  # Core.nothing;
            P4 = Core.Float64(0.0);  # Core.nothing;
            sdP1 = Core.Int64(0);  # Core.nothing;
            sdP2 = Core.Float64(0.0);  # Core.nothing;
            sdP3 = Core.Float64(0.0);  # Core.nothing;
            sdP4 = Core.Float64(0.0);  # Core.nothing;
            if Core.Int64(Base.length(Pdata_0)) > Core.Int64(0)
                P1 = Pdata_0[1];
                P2 = Pdata_0[2];
                P3 = Pdata_0[3];
                P4 = Pdata_0[4];

                # sdP1 = Core.Float64(0.0);
                # sdP2 = Core.Float64(0.0);
                # sdP3 = Core.Float64(0.0);
                # sdP4 = Core.Float64(0.0);
            end
            coefficient_from_fit = Core.Array{Core.Any, 1}();  # 擬合得到的參數值;
            margin_of_error = Core.Array{Core.Any, 1}();  # 擬合得到的參數解的標準差，注意，當使用加權 weight 擬合時，則不能使用 LsqFit.margin_error(fit, 0.05;) 求解擬合得到的參數解的標準差;
            confidence_inter = Core.Array{Core.Any, 1}();  # 擬合得到的參數解的 95% 水平的致信區間，注意，當使用加權 weight 擬合時，則不能使用 LsqFit.confidence_interval(fit, 0.05;) 求解擬合得到的參數解的 95% 水平的致信區間;
            Yvals = Core.Array{Core.Float64, 1}();  # 應變量 y 的擬合值;
            YvalsUncertaintyLower = Core.Array{Core.Float64, 1}();  # 擬合的應變量 Yvals 誤差下限，使用 LsqFit.margin_error(fit, 0.05;) 函數的返回值 margin_of_error 向量，估計得到的模型擬合標準差，再合并加上應變量 y 的實測值 Ydata 的變異程度（Ydata 的標準差）;
            YvalsUncertaintyUpper = Core.Array{Core.Float64, 1}();  # 擬合的應變量 Yvals 誤差上限，使用 LsqFit.margin_error(fit, 0.05;) 函數的返回值 margin_of_error 向量，估計得到的模型擬合標準差，再合并加上應變量 y 的實測值 Ydata 的變異程度（Ydata 的標準差）;
            Residual = Core.Array{Core.Float64, 1}();  # 擬合殘差向量;
            P1_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 依照擇時規則計算得到參數 P1 值的序列，並保存入數組;
            # if (Base.typeof(YdataMean) <: Core.Array && Base.length(YdataMean) > 0) && (Base.typeof(YdataSTD) <: Core.Array && Base.length(YdataSTD) > 0) && (Base.typeof(Xdata) <: Core.Array && Base.length(Xdata) > 0)
            if Base.isa(value, Base.Dict) && Base.length(value) > 0

                # 優化函數;
                # https://julianlsolvers.github.io/Optim.jl/stable/
                # https://github.com/JuliaNLSolvers/Optim.jl
                function MarketTiming_optim_model(trainingData, P1, P2, P3, P4, Quantitative_Indicators_Function, investment_method)
                    # println("P1 = ", P1, ", P2 = ", P2, ", P3 = ", P3, P4 = ", P4);

                    # 交易過股票的總隻數，求解各股票裏的最長交易天數;
                    maximum_PickStock_transaction = Core.Int64(0);  # 交易過股票的總隻數;
                    maximum_dates_transaction = Core.Int64(0);  # 各股票裏的最長交易天數;
                    minimum_dates_transaction = Core.Int64(0);  # 各股票裏的最短交易天數;
                    if Base.isa(trainingData, Base.Dict) && Base.length(trainingData) > 0

                        # 交易過股票的總隻數，函數 Base.keys(Dict) 表示獲取字典的所有 key 值，返回值爲字符串向量（Base.Vector）;
                        maximum_PickStock_transaction_2 = Core.Int64(Base.length(Base.keys(trainingData)));  # 交易過股票的總隻數;
                        maximum_PickStock_transaction *= Core.Int64(0);
                        maximum_PickStock_transaction += Core.Int64(maximum_PickStock_transaction_2);
                        # println(maximum_PickStock_transaction);

                        dates_transaction_Array = Core.Array{Core.Int64, 1}();
                        # 遍歷字典的鍵:值對;
                        for (key, value) in trainingData
                            # println("Key: $key, Value: $value");
                            if Base.isa(value, Base.Dict)
                                if Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array
                                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                                    Base.push!(dates_transaction_Array, Core.Int64(Base.length(value["date_transaction"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                                    # 篩選最長交易天數;
                                    if Core.Int64(Base.length(value["date_transaction"])) > Core.Int64(maximum_dates_transaction)
                                        maximum_dates_transaction_2 = Core.Int64(Base.length(value["date_transaction"]));
                                        maximum_dates_transaction *= Core.Int64(0);
                                        maximum_dates_transaction += Core.Int64(maximum_dates_transaction_2);
                                    end
                                end
                                if Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array
                                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                                    Base.push!(dates_transaction_Array, Core.Int64(Base.length(value["turnover_volume"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                                    # 篩選最長交易天數;
                                    if Core.Int64(Base.length(value["turnover_volume"])) > Core.Int64(maximum_dates_transaction)
                                        maximum_dates_transaction_2 = Core.Int64(Base.length(value["turnover_volume"]));
                                        maximum_dates_transaction *= Core.Int64(0);
                                        maximum_dates_transaction += Core.Int64(maximum_dates_transaction_2);
                                    end
                                end
                                if Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array
                                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                                    Base.push!(dates_transaction_Array, Core.Int64(Base.length(value["opening_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                                    # 篩選最長交易天數;
                                    if Core.Int64(Base.length(value["opening_price"])) > Core.Int64(maximum_dates_transaction)
                                        maximum_dates_transaction_2 = Core.Int64(Base.length(value["opening_price"]));
                                        maximum_dates_transaction *= Core.Int64(0);
                                        maximum_dates_transaction += Core.Int64(maximum_dates_transaction_2);
                                    end
                                end
                                if Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array
                                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                                    Base.push!(dates_transaction_Array, Core.Int64(Base.length(value["close_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                                    # 篩選最長交易天數;
                                    if Core.Int64(Base.length(value["close_price"])) > Core.Int64(maximum_dates_transaction)
                                        maximum_dates_transaction_2 = Core.Int64(Base.length(value["close_price"]));
                                        maximum_dates_transaction *= Core.Int64(0);
                                        maximum_dates_transaction += Core.Int64(maximum_dates_transaction_2);
                                    end
                                end
                                if Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array
                                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                                    Base.push!(dates_transaction_Array, Core.Int64(Base.length(value["low_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                                    # 篩選最長交易天數;
                                    if Core.Int64(Base.length(value["low_price"])) > Core.Int64(maximum_dates_transaction)
                                        maximum_dates_transaction_2 = Core.Int64(Base.length(value["low_price"]));
                                        maximum_dates_transaction *= Core.Int64(0);
                                        maximum_dates_transaction += Core.Int64(maximum_dates_transaction_2);
                                    end
                                end
                                if Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array
                                    # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;
                                    Base.push!(dates_transaction_Array, Core.Int64(Base.length(value["high_price"])));  # 記錄交易天數，使用 push! 函數在數組末尾追加推入新元;

                                    # 篩選最長交易天數;
                                    if Core.Int64(Base.length(value["high_price"])) > Core.Int64(maximum_dates_transaction)
                                        maximum_dates_transaction_2 = Core.Int64(Base.length(value["high_price"]));
                                        maximum_dates_transaction *= Core.Int64(0);
                                        maximum_dates_transaction += Core.Int64(maximum_dates_transaction_2);
                                    end
                                end
                            end
                        end
                        # println(maximum_dates_transaction);

                        if Base.length(dates_transaction_Array) > 0
                            minimum_dates_transaction_2 = Core.Int64(Base.findmin(dates_transaction_Array)[1]);
                            minimum_dates_transaction *= Core.Int64(0);
                            minimum_dates_transaction += Core.Int64(minimum_dates_transaction_2);
                        end
                        # println(minimum_dates_transaction);
                        dates_transaction_Array = Core.nothing;  # 釋放内存;
                    end

                    P1 = Core.Int64(Base.round(P1, digits = 0));  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;

                    y_Dict = Base.Dict{Core.String, Core.Any}();
                    for (key, value) in trainingData

                        # 增設優化（Optimizion）懲罰（Penalty）函數，增加約束條件：P2 > P3 , P1 >= 1 當約束條件成立時，優化目標函數取最大值，目的是，回避參數：P2 <= P3 和 P1 < 1 的情況;
                        if P2 <= P3 || (P1 < 1 || P1 > minimum_dates_transaction)
                            y_Dict[key] = (+Base.Inf);
                        end

                        # 最優化目標函數，回避參數：P2 <= P3 或 P1 < 1 的情況;
                        if P2 > P3 && (P1 >= 1 && P1 <= minimum_dates_transaction)
                            # y = MarketTiming_f_fit_model([Base.Dict{Core.String, Core.Any}(key => value), Quantitative_Indicators_Function, investment_method], [P1, P2, P3, P4]);
                            y = MarketTiming_fit_model(Base.Dict{Core.String, Core.Any}(key => value), P1, P2, P3, P4, Quantitative_Indicators_Function, investment_method);
                            # println(y);
                            if Base.isa(y, Base.Dict) && Base.length(y) > 0 && Base.haskey(y, Base.string(key))
                                if investment_method === "Long_Position_and_Short_Selling"
                                    if Base.isa(y[key], Base.Dict) && Base.length(y[key]) > 0 && Base.haskey(y[key], "y_profit")
                                        if Base.ismissing(y[key]["y_profit"]) || Base.isnothing(y[key]["y_profit"])
                                            y_Dict[key] = (+Base.Inf);
                                        else
                                            # println(y[key]["y_profit"]);
                                            y_Dict[key] = (-(y[key]["y_profit"]));  # 取負號（-）表示，將最優化目標函數最小值，轉換爲，最優化目標函數最大值;
                                        end
                                    else
                                        y_Dict[key] = (+Base.Inf);
                                    end
                                elseif investment_method === "Long_Position"
                                    if Base.isa(y[key], Base.Dict) && Base.length(y[key]) > 0 && Base.haskey(y[key], "y_Long_Position_profit")
                                        if Base.ismissing(y[key]["y_Long_Position_profit"]) || Base.isnothing(y[key]["y_Long_Position_profit"])
                                            y_Dict[key] = (+Base.Inf);
                                        else
                                            # println(y[key]["y_Long_Position_profit"]);
                                            y_Dict[key] = (-(y[key]["y_Long_Position_profit"]));  # 取負號（-）表示，將最優化目標函數最小值，轉換爲，最優化目標函數最大值;
                                        end
                                    else
                                        y_Dict[key] = (+Base.Inf);
                                    end
                                elseif investment_method === "Short_Selling"
                                    if Base.isa(y[key], Base.Dict) && Base.length(y[key]) > 0 && Base.haskey(y[key], "y_Short_Selling_profit")
                                        if Base.ismissing(y[key]["y_Short_Selling_profit"]) || Base.isnothing(y[key]["y_Short_Selling_profit"])
                                            y_Dict[key] = (+Base.Inf);
                                        else
                                            # println(y[key]["y_Short_Selling_profit"]);
                                            y_Dict[key] = (-(y[key]["y_Short_Selling_profit"]));  # 取負號（-）表示，將最優化目標函數最小值，轉換爲，最優化目標函數最大值;
                                        end
                                    else
                                        y_Dict[key] = (+Base.Inf);
                                    end
                                else
                                end
                            else
                                y_Dict[key] = (+Base.Inf);
                            end
                            # if Base.isa(y, Base.Dict) && Base.length(y) > 0 && Base.haskey(y, Base.string(key))
                            #     if investment_method === "Long_Position_and_Short_Selling"
                            #         if Base.isa(y[key], Base.Dict) && Base.length(y[key]) > 0 && Base.haskey(y[key], "y_loss")
                            #             if Base.ismissing(y[key]["y_loss"]) || Base.isnothing(y[key]["y_loss"])
                            #                 y_Dict[key] = (+Base.Inf);
                            #             else
                            #                 # println(y[key]["y_loss"]);
                            #                 y_Dict[key] = (+(y[key]["y_loss"]));  # 取負號（+）表示，取最優化目標函數最小值;
                            #             end
                            #         else
                            #             y_Dict[key] = (+Base.Inf);
                            #         end
                            #     elseif investment_method === "Long_Position"
                            #         if Base.isa(y[key], Base.Dict) && Base.length(y[key]) > 0 && Base.haskey(y[key], "y_Long_Position_loss")
                            #             if Base.ismissing(y[key]["y_Long_Position_loss"]) || Base.isnothing(y[key]["y_Long_Position_loss"])
                            #                 y_Dict[key] = (+Base.Inf);
                            #             else
                            #                 # println(y[key]["y_Long_Position_loss"]);
                            #                 y_Dict[key] = (+(y[key]["y_Long_Position_loss"]));  # 取負號（+）表示，取最優化目標函數最小值;
                            #             end
                            #         else
                            #             y_Dict[key] = (+Base.Inf);
                            #         end
                            #     elseif investment_method === "Short_Selling"
                            #         if Base.isa(y[key], Base.Dict) && Base.length(y[key]) > 0 && Base.haskey(y[key], "y_Short_Selling_loss")
                            #             if Base.ismissing(y[key]["y_Short_Selling_loss"]) || Base.isnothing(y[key]["y_Short_Selling_loss"])
                            #                 y_Dict[key] = (+Base.Inf);
                            #             else
                            #                 # println(y[key]["y_Short_Selling_loss"]);
                            #                 y_Dict[key] = (+(y[key]["y_Short_Selling_loss"]));  # 取負號（+）表示，取最優化目標函數最小值;
                            #             end
                            #         else
                            #             y_Dict[key] = (+Base.Inf);
                            #         end
                            #     else
                            #     end
                            # else
                            #     y_Dict[key] = (+Base.Inf);
                            # end
                        end
                        # println(y_Dict[key]);
                    end

                    return y_Dict;
                end
                # MarketTiming_f_optim_model(P) = (
                #     MarketTiming_optim_model(
                #         Base.Dict{Core.String, Core.Any}(
                #             key => Base.Dict{Core.String, Core.Any}(
                #                 "date_transaction" => value["date_transaction"],
                #                 "turnover_volume" => value["turnover_volume"],
                #                 "turnover_amount" => value["turnover_amount"],
                #                 "opening_price" => value["opening_price"],
                #                 "close_price" => value["close_price"],
                #                 "low_price" => value["low_price"],
                #                 "high_price" => value["high_price"],
                #                 "focus" => training_focus,
                #                 "amplitude" => training_amplitude,
                #                 "amplitude_rate" => training_amplitude_rate,
                #                 "opening_price_Standardization" => training_opening_price_Standardization,
                #                 "closing_price_Standardization" => training_closing_price_Standardization,
                #                 "low_price_Standardization" => training_low_price_Standardization,
                #                 "high_price_Standardization" => training_high_price_Standardization,
                #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                #                 "high_price_proportion" => training_high_price_proportion,
                #                 "low_price_proportion" => training_low_price_proportion
                #             )
                #         ),
                #         P[1],
                #         P[2],
                #         P[3],
                #         P[4],
                #         Quantitative_Indicators_Function,
                #         investment_method
                #     )[key];
                # );
                # MarketTiming_f_optim_model(P) = (
                #     MarketTiming_fit_model(
                #         Base.Dict{Core.String, Core.Any}(
                #             key => Base.Dict{Core.String, Core.Any}(
                #                 "date_transaction" => value["date_transaction"],
                #                 "turnover_volume" => value["turnover_volume"],
                #                 "turnover_amount" => value["turnover_amount"],
                #                 "opening_price" => value["opening_price"],
                #                 "close_price" => value["close_price"],
                #                 "low_price" => value["low_price"],
                #                 "high_price" => value["high_price"],
                #                 "focus" => training_focus,
                #                 "amplitude" => training_amplitude,
                #                 "amplitude_rate" => training_amplitude_rate,
                #                 "opening_price_Standardization" => training_opening_price_Standardization,
                #                 "closing_price_Standardization" => training_closing_price_Standardization,
                #                 "low_price_Standardization" => training_low_price_Standardization,
                #                 "high_price_Standardization" => training_high_price_Standardization,
                #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                #                 "high_price_proportion" => training_high_price_proportion,
                #                 "low_price_proportion" => training_low_price_proportion
                #             )
                #         ),
                #         P[1],
                #         P[2],
                #         P[3],
                #         P[4],
                #         Quantitative_Indicators_Function,
                #         investment_method
                #     )[key]["y"];
                # );

                # 自定義手動優化過程求最大值;
                P1_I = [P1];  # [Core.Int64(3)];
                P2_I = [P2];  # [Core.Float64(+1.0)];
                P3_I = [P3];  # [Core.Float64(-1.0)];
                P4_I = [P4];  # [Core.Float64(0.0)];
                f_y_max = [Core.Float64(0.0)];
                for i = Core.Int64(Plower[1]):Core.Int64(Pupper[1])

                    # 定義優化目標函數;
                    MarketTiming_f_optim_model(P) = (
                        MarketTiming_optim_model(
                            Base.Dict{Core.String, Core.Any}(
                                key => Base.Dict{Core.String, Core.Any}(
                                    "date_transaction" => value["date_transaction"],
                                    "turnover_volume" => value["turnover_volume"],
                                    # "turnover_amount" => value["turnover_amount"],
                                    "opening_price" => value["opening_price"],
                                    "close_price" => value["close_price"],
                                    "low_price" => value["low_price"],
                                    "high_price" => value["high_price"],
                                    "focus" => training_focus,
                                    "amplitude" => training_amplitude,
                                    "amplitude_rate" => training_amplitude_rate,
                                    "opening_price_Standardization" => training_opening_price_Standardization,
                                    "closing_price_Standardization" => training_closing_price_Standardization,
                                    "low_price_Standardization" => training_low_price_Standardization,
                                    "high_price_Standardization" => training_high_price_Standardization,
                                    "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                                    "opening_price_growth_rate" => training_opening_price_growth_rate,
                                    "closing_price_growth_rate" => training_closing_price_growth_rate,
                                    "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                                    "high_price_proportion" => training_high_price_proportion,
                                    "low_price_proportion" => training_low_price_proportion
                                )
                            ),
                            Core.Int64(i),
                            P[1],
                            P[2],
                            P[3],
                            Quantitative_Indicators_Function,
                            investment_method
                        )[key];
                    );

                    # 創建優化對象;
                    result_optim = Optim.optimize(
                        MarketTiming_f_optim_model,
                        # gradient!,  # 自定義的迭代梯度（Gradient）函數;
                        # hessian!,  # 自定義的（Hessian）函數;
                        # [Plower[2], Plower[3], Plower[4]],  # [Core.Int64(1), -Base.Inf, -Base.Inf, -Base.Inf],
                        # [Pupper[2], Pupper[3], Pupper[4]],  # [Core.Int64(20), +Base.Inf, +Base.Inf, +Base.Inf],
                        [P2, P3, P4],  # [Core.Int64(i), P2_I[1], P3_I[1], P4_I[1]],
                        # Algorithm = :InteriorPoint,
                        # SAMIN(),  # NelderMead(),  # Fminbox(GradientDescent()),  # BFGS(),  # Newton(),
                        # autodiff = :forward,  # 使用第三方擴展包：ForwardDiff.jl 計算精確一階和二階微分;
                        Optim.Options(
                            # x_tol = x0.0,
                            f_tol = 0.0,  # 最大收斂誤差;
                            # g_tol = 1e-8,
                            f_calls_limit = 0,  # 最大迭代次數;
                            # g_calls_limit = 0,
                            # h_calls_limit = 0,
                            iterations = 10000,  # 最大迭代次數;
                            store_trace = true,
                            show_trace = false,
                            show_every = 1,
                            time_limit = 180  # Base.NaN  # 超過臨界時長則自動終止運算，單位：秒（Second）;
                        )
                    );

                    # 讀取優化結果;
                    f_min_x = Optim.minimizer(result_optim);  # 貨的最小值點（x 值）（總是一個向量 Vector）;
                    # println(f_min_x);
                    # println("最優解: ", result_optim.minimizer[1], result_optim.minimizer[2], result_optim.minimizer[3], result_optim.minimizer[4]);  # 輸出最優解參數 P 向量;
                    f_min_y = Optim.minimum(result_optim);  # 獲得最小值（y 值）;
                    f_min_y = Core.Float64(-Core.Float64(f_min_y));
                    # println(f_min_y);
                    if Core.Float64(f_min_y) > Core.Float64(f_y_max[1])
                        f_y_max[1] = Core.Float64(f_min_y);
                        # println(f_y_max[1]);
                        P1_I[1] = Core.Int64(i);  # Core.Int64(f_min_x[1]);
                        # println(P1_I[1]);
                        P2_I[1] = Core.Float64(f_min_x[1]);  # Core.Float64(f_min_x[2]);
                        # println(P2_I[1]);
                        P3_I[1] = Core.Float64(f_min_x[2]);  # Core.Float64(f_min_x[3]);
                        # println(P3_I[1]);
                        P4_I[1] = Core.Float64(f_min_x[3]);  # Core.Float64(f_min_x[4]);
                        # println(P4_I[1]);
                    end
                    # MarketTiming_f_optim_model = Core.nothing;  # 釋放内存;
                end
                P1 = Core.Int64(P1_I[1]);
                P1 = Core.Int64(Base.round(P1, digits = 0));  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                # println(P1);
                P2 = Core.Float64(P2_I[1]);
                # println(P2);
                P3 = Core.Float64(P3_I[1]);
                # println(P3);
                P4 = Core.Float64(P4_I[1]);
                # println(P4);

                # # 定義優化目標函數;
                # MarketTiming_f_optim_model(P) = (
                #     MarketTiming_optim_model(
                #         Base.Dict{Core.String, Core.Any}(
                #             key => Base.Dict{Core.String, Core.Any}(
                #                 "date_transaction" => value["date_transaction"],
                #                 "turnover_volume" => value["turnover_volume"],
                #                 # "turnover_amount" => value["turnover_amount"],
                #                 "opening_price" => value["opening_price"],
                #                 "close_price" => value["close_price"],
                #                 "low_price" => value["low_price"],
                #                 "high_price" => value["high_price"],
                #                 "focus" => training_focus,
                #                 "amplitude" => training_amplitude,
                #                 "amplitude_rate" => training_amplitude_rate,
                #                 "opening_price_Standardization" => training_opening_price_Standardization,
                #                 "closing_price_Standardization" => training_closing_price_Standardization,
                #                 "low_price_Standardization" => training_low_price_Standardization,
                #                 "high_price_Standardization" => training_high_price_Standardization,
                #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                #                 "high_price_proportion" => training_high_price_proportion,
                #                 "low_price_proportion" => training_low_price_proportion
                #             )
                #         ),
                #         P[1],
                #         P[2],
                #         P[3],
                #         P[4],
                #         Quantitative_Indicators_Function,
                #         investment_method
                #     )[key];
                # );
                # # 創建優化對象;
                # result_optim = Optim.optimize(
                #     MarketTiming_f_optim_model,
                #     # gradient!,  # 自定義的迭代梯度（Gradient）函數;
                #     # hessian!,  # 自定義的（Hessian）函數;
                #     # [Plower[1], Plower[2], Plower[3], Plower[4]],  # [-Base.Inf, -Base.Inf, -Base.Inf, -Base.Inf],
                #     # [Pupper[1], Pupper[2], Pupper[3], Pupper[4]],  # [+Base.Inf, +Base.Inf, +Base.Inf, +Base.Inf],
                #     [P1, P2, P3, P4],  # [P1_I[1], P2_I[1], P3_I[1], P4_I[1]],
                #     # Algorithm = :InteriorPoint,
                #     # SAMIN(),  # NelderMead(),  # Fminbox(GradientDescent()),  # BFGS(),  # Newton(),
                #     # autodiff = :forward,  # 使用第三方擴展包：ForwardDiff.jl 計算精確一階和二階微分;
                #     Optim.Options(
                #         # x_tol = x0.0,
                #         f_tol = 0.0,  # 最大收斂誤差;
                #         # g_tol = 1e-8,
                #         f_calls_limit = 0,  # 最大迭代次數;
                #         # g_calls_limit = 0,
                #         # h_calls_limit = 0,
                #         iterations = 10000,  # 最大迭代次數;
                #         store_trace = true,
                #         show_trace = false,
                #         show_every = 1,
                #         time_limit = 180  # Base.NaN  # 超過臨界時長則自動終止運算，單位：秒（Second）;
                #     )
                # );
                # # 讀取優化結果;
                # f_min_x = Optim.minimizer(result_optim);  # 貨的最小值點（x 值）（總是一個向量 Vector）;
                # # println(f_min_x);
                # # println("最優解: ", result_optim.minimizer[1], result_optim.minimizer[2], result_optim.minimizer[3], result_optim.minimizer[4]);  # 輸出最優解參數 P 向量;
                # f_min_y = Optim.minimum(result_optim);  # 獲得最小值（y 值）;
                # f_min_y = Core.Float64(-Core.Float64(f_min_y));
                # # println(f_min_y);
                # if Core.Float64(f_min_y) > Core.Float64(f_y_max[1])
                #     f_y_max[1] = Core.Float64(f_min_y);
                #     # println(f_y_max[1]);
                #     P1_I[1] = Core.Int64(Base.round(f_min_x[1], digits = 0));  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                #     # println(P1_I[1]);
                #     P2_I[1] = Core.Float64(f_min_x[2]);
                #     # println(P2_I[1]);
                #     P3_I[1] = Core.Float64(f_min_x[3]);
                #     # println(P3_I[1]);
                #     P4_I[1] = Core.Float64(f_min_x[4]);
                #     # println(P4_I[1]);
                # end
                # # MarketTiming_f_optim_model = Core.nothing;  # 釋放内存;
                # P1 = Core.Int64(P1_I[1]);
                # P1 = Core.Int64(Base.round(P1, digits = 0));  # 函數：Base.round(P1, digits = 0) 表示四捨五入取整;
                # # println(P1);
                # P2 = Core.Float64(P2_I[1]);
                # # println(P2);
                # P3 = Core.Float64(P3_I[1]);
                # # println(P3);
                # P4 = Core.Float64(P4_I[1]);
                # # println(P4);

                sdP1 = Core.Int64(0);  # 優化之後獲得的參數的標準差;
                sdP2 = Core.Float64(0.0);  # 優化之後獲得的參數的標準差;
                sdP3 = Core.Float64(0.0);  # 優化之後獲得的參數的標準差;
                sdP4 = Core.Float64(0.0);  # 優化之後獲得的參數的標準差;

                # coefficient_from_fit = Core.Array{Core.Any, 1}();  # 優化之後得到的參數值;
                Base.push!(coefficient_from_fit, P1);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(coefficient_from_fit, P2);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(coefficient_from_fit, P3);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(coefficient_from_fit, P4);  # 使用 push! 函數在數組末尾追加推入新元;
                # coefficient_from_fit[1] = P1;
                # coefficient_from_fit[2] = P2;
                # coefficient_from_fit[3] = P3;
                # coefficient_from_fit[4] = P4;

                # margin_of_error = Core.Array{Core.Any, 1}();  # 優化之後得到的參數解的標準差;
                # margin_of_error[1] = sdP1;
                # margin_of_error[2] = sdP2;
                # margin_of_error[3] = sdP3;
                # margin_of_error[4] = sdP4;
                Base.push!(margin_of_error, sdP1);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(margin_of_error, sdP2);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(margin_of_error, sdP3);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(margin_of_error, sdP4);  # 使用 push! 函數在數組末尾追加推入新元;
                # println(margin_of_error);  # margin_of_error 擬合參數解的標準差;
                # Base.write(Base.stdout, margin_of_error * "\n");
                # [Base.string(margin_of_error[1]), Base.string(margin_of_error[2]), Base.string(margin_of_error[3]), Base.string(margin_of_error[4])]

                # confidence_inter = Core.Array{Core.Any, 1}();  # 擬合得到的參數解的 95% 水平的致信區間;
                # confidence_inter[1] = [(P1 - sdP1), (P1 + sdP1)];
                # confidence_inter[2] = [(P2 - sdP2), (P2 + sdP2)];
                # confidence_inter[3] = [(P3 - sdP3), (P3 + sdP3)];
                # confidence_inter[3] = [(P4 - sdP4), (P4 + sdP4)];
                Base.push!(confidence_inter, [(P1 - sdP1), (P1 + sdP1)]);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(confidence_inter, [(P2 - sdP2), (P2 + sdP2)]);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(confidence_inter, [(P3 - sdP3), (P3 + sdP3)]);  # 使用 push! 函數在數組末尾追加推入新元;
                Base.push!(confidence_inter, [(P4 - sdP4), (P4 + sdP4)]);  # 使用 push! 函數在數組末尾追加推入新元;
                # println(confidence_inter);  # confidence_inter 擬合參數解的 95% 水平的致信區間;
                # Base.write(Base.stdout, confidence_inter * "\n");
                # [Base.string(confidence_inter[1][1]), Base.string(confidence_inter[2][1]), Base.string(confidence_inter[3][1]), Base.string(confidence_inter[4][1])]
                # [Base.string(confidence_inter[1][2]), Base.string(confidence_inter[2][2]), Base.string(confidence_inter[3][2]), Base.string(confidence_inter[4][2])]

                # 計算擬合的應變量 Yvals 值;
                # Yvals = Core.Array{Core.Float64, 1}();  # 應變量 y 的擬合值;
                yv = MarketTiming_fit_model(
                    Base.Dict{Core.String, Core.Any}(
                        key => Base.Dict{Core.String, Core.Any}(
                            "date_transaction" => value["date_transaction"],
                            "turnover_volume" => value["turnover_volume"],
                            # "turnover_amount" => value["turnover_amount"],
                            "opening_price" => value["opening_price"],
                            "close_price" => value["close_price"],
                            "low_price" => value["low_price"],
                            "high_price" => value["high_price"],
                            "focus" => training_focus,
                            "amplitude" => training_amplitude,
                            "amplitude_rate" => training_amplitude_rate,
                            "opening_price_Standardization" => training_opening_price_Standardization,
                            "closing_price_Standardization" => training_closing_price_Standardization,
                            "low_price_Standardization" => training_low_price_Standardization,
                            "high_price_Standardization" => training_high_price_Standardization,
                            "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                            "opening_price_growth_rate" => training_opening_price_growth_rate,
                            "closing_price_growth_rate" => training_closing_price_growth_rate,
                            "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                            "high_price_proportion" => training_high_price_proportion,
                            "low_price_proportion" => training_low_price_proportion
                        )
                    ),
                    P1,
                    P2,
                    P3,
                    P4,
                    Quantitative_Indicators_Function,
                    investment_method
                )[key];
                # yv = MarketTiming_f_fit_model(
                #     [
                #         Base.Dict{Core.String, Core.Any}(
                #             key => Base.Dict{Core.String, Core.Any}(
                #                 "date_transaction" => value["date_transaction"],
                #                 "turnover_volume" => value["turnover_volume"],
                #                 # "turnover_amount" => value["turnover_amount"],
                #                 "opening_price" => value["opening_price"],
                #                 "close_price" => value["close_price"],
                #                 "low_price" => value["low_price"],
                #                 "high_price" => value["high_price"],
                #                 "focus" => training_focus,
                #                 "amplitude" => training_amplitude,
                #                 "amplitude_rate" => training_amplitude_rate,
                #                 "opening_price_Standardization" => training_opening_price_Standardization,
                #                 "closing_price_Standardization" => training_closing_price_Standardization,
                #                 "low_price_Standardization" => training_low_price_Standardization,
                #                 "high_price_Standardization" => training_high_price_Standardization,
                #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                #                 "high_price_proportion" => training_high_price_proportion,
                #                 "low_price_proportion" => training_low_price_proportion
                #             )
                #         ),
                #         Quantitative_Indicators_Function,
                #         investment_method
                #     ],
                #     [
                #         P1,
                #         P2,
                #         P3,
                #         P4
                #     ]
                # )[key];
                if !(Base.ismissing(yv["profit_total"]) || Base.isnothing(yv["profit_total"]))
                    yv = Core.Float64(yv["profit_total"]);
                    Base.push!(Yvals, yv);  # 使用 push! 函數在數組末尾追加推入新元;
                end

                # 計算擬合的應變量 Yvals 誤差上下限;
                # 使用 LsqFit.margin_error(fit, 0.05;) 函數的返回值 margin_of_error 向量來估算擬合誤差時，需要在擬合模型之前，先估算應變量 y 實測值的不確定性程度（Ydata 的標準差），然後再合并應變量 y 實測值的不確定性程度（Ydata 的標準差）與從 margin_of_error 向量獲得的擬合誤差，得到總的不確定度;
                # 如果使用應變量 y 的平均值擬合，就已經丟失了應變量 y 的分佈信息，導致 curve_fit() 函數認爲，應變量 y 的實測值 Ydata 是絕對且無變異的，這樣會導致低估擬合參數標準誤差;
                # 要估算應變量 y 的實測值 Ydata 的不確定性，可以計算 Ydata 的標準差，然後將這個標準差的倒數向量傳遞給 curve_fit() 函數的 [w,] 參數;
                # YvalsUncertaintyLower = Core.Array{Core.Float64, 1}();  # 擬合的應變量 Yvals 誤差下限，使用 LsqFit.margin_error(fit, 0.05;) 函數的返回值 margin_of_error 向量，估計得到的模型擬合標準差，再合并加上應變量 y 的實測值 Ydata 的變異程度（Ydata 的標準差）;
                # YvalsUncertaintyUpper = Core.Array{Core.Float64, 1}();  # 擬合的應變量 Yvals 誤差上限，使用 LsqFit.margin_error(fit, 0.05;) 函數的返回值 margin_of_error 向量，估計得到的模型擬合標準差，再合并加上應變量 y 的實測值 Ydata 的變異程度（Ydata 的標準差）;
                for i = 1:Base.length(Yvals)
                    yvsd = MarketTiming_fit_model(
                        Base.Dict{Core.String, Core.Any}(
                            key => Base.Dict{Core.String, Core.Any}(
                                "date_transaction" => value["date_transaction"],
                                "turnover_volume" => value["turnover_volume"],
                                # "turnover_amount" => value["turnover_amount"],
                                "opening_price" => value["opening_price"],
                                "close_price" => value["close_price"],
                                "low_price" => value["low_price"],
                                "high_price" => value["high_price"],
                                "focus" => training_focus,
                                "amplitude" => training_amplitude,
                                "amplitude_rate" => training_amplitude_rate,
                                "opening_price_Standardization" => training_opening_price_Standardization,
                                "closing_price_Standardization" => training_closing_price_Standardization,
                                "low_price_Standardization" => training_low_price_Standardization,
                                "high_price_Standardization" => training_high_price_Standardization,
                                "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                                "opening_price_growth_rate" => training_opening_price_growth_rate,
                                "closing_price_growth_rate" => training_closing_price_growth_rate,
                                "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                                "high_price_proportion" => training_high_price_proportion,
                                "low_price_proportion" => training_low_price_proportion
                            )
                        ),
                        (P1 - sdP1),
                        (P2 - sdP2),
                        (P3 - sdP3),
                        (P4 - sdP4),
                        Quantitative_Indicators_Function,
                        investment_method
                    )[key];
                    # yvsd = MarketTiming_f_fit_model(
                    #     [
                    #         Base.Dict{Core.String, Core.Any}(
                    #             key => Base.Dict{Core.String, Core.Any}(
                    #                 "date_transaction" => value["date_transaction"],
                    #                 "turnover_volume" => value["turnover_volume"],
                    #                 # "turnover_amount" => value["turnover_amount"],
                    #                 "opening_price" => value["opening_price"],
                    #                 "close_price" => value["close_price"],
                    #                 "low_price" => value["low_price"],
                    #                 "high_price" => value["high_price"],
                    #                 "focus" => training_focus,
                    #                 "amplitude" => training_amplitude,
                    #                 "amplitude_rate" => training_amplitude_rate,
                    #                 "opening_price_Standardization" => training_opening_price_Standardization,
                    #                 "closing_price_Standardization" => training_closing_price_Standardization,
                    #                 "low_price_Standardization" => training_low_price_Standardization,
                    #                 "high_price_Standardization" => training_high_price_Standardization,
                    #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                    #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                    #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                    #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                    #                 "high_price_proportion" => training_high_price_proportion,
                    #                 "low_price_proportion" => training_low_price_proportion
                    #             )
                    #         ),
                    #         Quantitative_Indicators_Function,
                    #         investment_method
                    #     ],
                    #     [
                    #         (P1 - sdP1),
                    #         (P2 - sdP2),
                    #         (P3 - sdP3),
                    #         (P4 - sdP4)
                    #     ]
                    # )[key];
                    yvLower = Core.Float64(Yvals[i] * Core.Float64(Core.Float64(1.0) - yvsd["average_price_amplitude_date_transaction"]));
                    # yvLower = Yvals[i] - Base.sqrt((Yvals[i] - yvsd)^2 + Core.Float64(Statistics.std(YdataSTD; corrected=false))^2);
                    yvLower = Core.Float64(yvLower);
                    Base.push!(YvalsUncertaintyLower, yvLower);  # 使用 push! 函數在數組末尾追加推入新元;
        
                    yvsd = MarketTiming_fit_model(
                        Base.Dict{Core.String, Core.Any}(
                            key => Base.Dict{Core.String, Core.Any}(
                                "date_transaction" => value["date_transaction"],
                                "turnover_volume" => value["turnover_volume"],
                                # "turnover_amount" => value["turnover_amount"],
                                "opening_price" => value["opening_price"],
                                "close_price" => value["close_price"],
                                "low_price" => value["low_price"],
                                "high_price" => value["high_price"],
                                "focus" => training_focus,
                                "amplitude" => training_amplitude,
                                "amplitude_rate" => training_amplitude_rate,
                                "opening_price_Standardization" => training_opening_price_Standardization,
                                "closing_price_Standardization" => training_closing_price_Standardization,
                                "low_price_Standardization" => training_low_price_Standardization,
                                "high_price_Standardization" => training_high_price_Standardization,
                                "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                                "opening_price_growth_rate" => training_opening_price_growth_rate,
                                "closing_price_growth_rate" => training_closing_price_growth_rate,
                                "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                                "high_price_proportion" => training_high_price_proportion,
                                "low_price_proportion" => training_low_price_proportion
                            )
                        ),
                        (P1 + sdP1),
                        (P2 + sdP2),
                        (P3 + sdP3),
                        (P4 + sdP4),
                        Quantitative_Indicators_Function,
                        investment_method
                    )[key];
                    # yvsd = MarketTiming_f_fit_model(
                    #     [
                    #         Base.Dict{Core.String, Core.Any}(
                    #             key => Base.Dict{Core.String, Core.Any}(
                    #                 "date_transaction" => value["date_transaction"],
                    #                 "turnover_volume" => value["turnover_volume"],
                    #                 # "turnover_amount" => value["turnover_amount"],
                    #                 "opening_price" => value["opening_price"],
                    #                 "close_price" => value["close_price"],
                    #                 "low_price" => value["low_price"],
                    #                 "high_price" => value["high_price"],
                    #                 "focus" => training_focus,
                    #                 "amplitude" => training_amplitude,
                    #                 "amplitude_rate" => training_amplitude_rate,
                    #                 "opening_price_Standardization" => training_opening_price_Standardization,
                    #                 "closing_price_Standardization" => training_closing_price_Standardization,
                    #                 "low_price_Standardization" => training_low_price_Standardization,
                    #                 "high_price_Standardization" => training_high_price_Standardization,
                    #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                    #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                    #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                    #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                    #                 "high_price_proportion" => training_high_price_proportion,
                    #                 "low_price_proportion" => training_low_price_proportion
                    #             )
                    #         ),
                    #         Quantitative_Indicators_Function,
                    #         investment_method
                    #     ],
                    #     [
                    #         (P1 + sdP1),
                    #         (P2 + sdP2),
                    #         (P3 + sdP3),
                    #         (P4 + sdP4)
                    #     ]
                    # )[key];
                    yvUpper = Core.Float64(Yvals[i] * Core.Float64(Core.Float64(1.0) + yvsd["average_price_amplitude_date_transaction"]));
                    # yvUpper = Yvals[i] + Base.sqrt((yvsd - Yvals[i])^2 + Core.Float64(Statistics.std(YdataSTD; corrected=false))^2);
                    yvUpper = Core.Float64(yvUpper);
                    Base.push!(YvalsUncertaintyUpper, yvUpper);
                end

                # 計算擬合殘差;
                # Residual = Core.Array{Core.Float64, 1}();  # 擬合殘差向量;
                for i = 1:Base.length(Yvals)
                    # resi = Core.Float64(Statistics.std(YdataSTD; corrected=false)) * Yvals[i];
                    yvsd = MarketTiming_fit_model(
                        Base.Dict{Core.String, Core.Any}(
                            key => Base.Dict{Core.String, Core.Any}(
                                "date_transaction" => value["date_transaction"],
                                "turnover_volume" => value["turnover_volume"],
                                # "turnover_amount" => value["turnover_amount"],
                                "opening_price" => value["opening_price"],
                                "close_price" => value["close_price"],
                                "low_price" => value["low_price"],
                                "high_price" => value["high_price"],
                                "focus" => training_focus,
                                "amplitude" => training_amplitude,
                                "amplitude_rate" => training_amplitude_rate,
                                "opening_price_Standardization" => training_opening_price_Standardization,
                                "closing_price_Standardization" => training_closing_price_Standardization,
                                "low_price_Standardization" => training_low_price_Standardization,
                                "high_price_Standardization" => training_high_price_Standardization,
                                "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                                "opening_price_growth_rate" => training_opening_price_growth_rate,
                                "closing_price_growth_rate" => training_closing_price_growth_rate,
                                "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                                "high_price_proportion" => training_high_price_proportion,
                                "low_price_proportion" => training_low_price_proportion
                            )
                        ),
                        P1,
                        P2,
                        P3,
                        P4,
                        Quantitative_Indicators_Function,
                        investment_method
                    )[key];
                    # yvsd = MarketTiming_f_fit_model(
                    #     [
                    #         Base.Dict{Core.String, Core.Any}(
                    #             key => Base.Dict{Core.String, Core.Any}(
                    #                 "date_transaction" => value["date_transaction"],
                    #                 "turnover_volume" => value["turnover_volume"],
                    #                 # "turnover_amount" => value["turnover_amount"],
                    #                 "opening_price" => value["opening_price"],
                    #                 "close_price" => value["close_price"],
                    #                 "low_price" => value["low_price"],
                    #                 "high_price" => value["high_price"],
                    #                 "focus" => training_focus,
                    #                 "amplitude" => training_amplitude,
                    #                 "amplitude_rate" => training_amplitude_rate,
                    #                 "opening_price_Standardization" => training_opening_price_Standardization,
                    #                 "closing_price_Standardization" => training_closing_price_Standardization,
                    #                 "low_price_Standardization" => training_low_price_Standardization,
                    #                 "high_price_Standardization" => training_high_price_Standardization,
                    #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                    #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                    #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                    #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                    #                 "high_price_proportion" => training_high_price_proportion,
                    #                 "low_price_proportion" => training_low_price_proportion
                    #             )
                    #         ),
                    #         Quantitative_Indicators_Function,
                    #         investment_method
                    #     ],
                    #     [
                    #         P1,
                    #         P2,
                    #         P3,
                    #         P4
                    #     ]
                    # )[key];
                    resi = Core.Float64(yvsd["average_price_amplitude_date_transaction"] * Yvals[i]);
                    Base.push!(Residual, resi);  # 使用 push! 函數在數組末尾追加推入新元素;
                end

                # training_result = MarketTiming_f_fit_model(
                #     [
                #         Base.Dict{Core.String, Core.Any}(
                #             key => Base.Dict{Core.String, Core.Any}(
                #                 "date_transaction" => value["date_transaction"],
                #                 "turnover_volume" => value["turnover_volume"],
                #                 # "turnover_amount" => value["turnover_amount"],
                #                 "opening_price" => value["opening_price"],
                #                 "close_price" => value["close_price"],
                #                 "low_price" => value["low_price"],
                #                 "high_price" => value["high_price"],
                #                 "focus" => training_focus,
                #                 "amplitude" => training_amplitude,
                #                 "amplitude_rate" => training_amplitude_rate,
                #                 "opening_price_Standardization" => training_opening_price_Standardization,
                #                 "closing_price_Standardization" => training_closing_price_Standardization,
                #                 "low_price_Standardization" => training_low_price_Standardization,
                #                 "high_price_Standardization" => training_high_price_Standardization,
                #                 "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                #                 "opening_price_growth_rate" => training_opening_price_growth_rate,
                #                 "closing_price_growth_rate" => training_closing_price_growth_rate,
                #                 "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                #                 "high_price_proportion" => training_high_price_proportion,
                #                 "low_price_proportion" => training_low_price_proportion
                #             )
                #         ),
                #         Quantitative_Indicators_Function,
                #         investment_method
                #     ],
                #     [
                #         P1,
                #         P2,
                #         P3,
                #         P4
                #     ]
                # )[key];
                training_result = MarketTiming_fit_model(
                    Base.Dict{Core.String, Core.Any}(
                        key => Base.Dict{Core.String, Core.Any}(
                            "date_transaction" => value["date_transaction"],
                            "turnover_volume" => value["turnover_volume"],
                            # "turnover_amount" => value["turnover_amount"],
                            "opening_price" => value["opening_price"],
                            "close_price" => value["close_price"],
                            "low_price" => value["low_price"],
                            "high_price" => value["high_price"],
                            "focus" => training_focus,
                            "amplitude" => training_amplitude,
                            "amplitude_rate" => training_amplitude_rate,
                            "opening_price_Standardization" => training_opening_price_Standardization,
                            "closing_price_Standardization" => training_closing_price_Standardization,
                            "low_price_Standardization" => training_low_price_Standardization,
                            "high_price_Standardization" => training_high_price_Standardization,
                            "turnover_volume_growth_rate" => training_turnover_volume_growth_rate,
                            "opening_price_growth_rate" => training_opening_price_growth_rate,
                            "closing_price_growth_rate" => training_closing_price_growth_rate,
                            "closing_minus_opening_price_growth_rate" => training_closing_minus_opening_price_growth_rate,
                            "high_price_proportion" => training_high_price_proportion,
                            "low_price_proportion" => training_low_price_proportion
                        )
                    ),
                    P1,
                    P2,
                    P3,
                    P4,
                    Quantitative_Indicators_Function,
                    investment_method
                )[key];
                # Base.Dict{Core.String, Core.Any}(
                #     "y_profit" => y_profit,  # 優化目標變量，每兩次對衝交易利潤 × 權重，加權纍加總計;
                #     "y_Long_Position_profit" => y_Long_Position_profit,  # 優化目標變量，做多（Long Position），每兩次對衝交易利潤 × 權重，加權纍加總計;
                #     "y_Short_Selling_profit" => y_Short_Selling_profit,  # 優化目標變量，做空（Short Selling），每兩次對衝交易利潤 × 權重，加權纍加總計;
                #     "y_loss" => y_loss,  # 優化目標變量，每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                #     "y_Long_Position_loss" => y_Long_Position_loss,  # 優化目標變量，做多（Long Position），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                #     "y_Short_Selling_loss" => y_Short_Selling_loss,  # 優化目標變量，做空（Short Selling），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                #     "profit_total" => y_total,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                #     "Long_Position_profit_total" => y_total_Long_Position,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                #     "Short_Selling_profit_total" => y_total_Short_Selling,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                #     "profit_Positive" => y_Positive,  # 每兩次對衝交易收益纍加總計;
                #     "Long_Position_profit_Positive" => y_Positive_Long_Position,  # 每兩次對衝交易收益纍加總計;
                #     "Short_Selling_profit_Positive" => y_Positive_Short_Selling,  # 每兩次對衝交易收益纍加總計;
                #     "profit_Positive_probability" => y_P_Positive,  # 每兩次對衝交易正利潤概率;
                #     "Long_Position_profit_Positive_probability" => y_P_Positive_Long_Position,  # 每兩次對衝交易正利潤概率;
                #     "Short_Selling_profit_Positive_probability" => y_P_Positive_Short_Selling,  # 每兩次對衝交易正利潤概率;
                #     "profit_Negative" => y_Negative,  # 每兩次對衝交易損失纍加總計;
                #     "Long_Position_profit_Negative" => y_Negative_Long_Position,  # 每兩次對衝交易損失纍加總計;
                #     "Short_Selling_profit_Negative" => y_Negative_Short_Selling,  # 每兩次對衝交易損失纍加總計;
                #     "profit_Negative_probability" => y_P_Negative,  # 每兩次對衝交易負利潤概率;
                #     "Long_Position_profit_Negative_probability" => y_P_Negative_Long_Position,  # 每兩次對衝交易負利潤概率;
                #     "Short_Selling_profit_Negative_probability" => y_P_Negative_Short_Selling,  # 每兩次對衝交易負利潤概率;
                #     "Long_Position_profit_date_transaction" => y_A_Long_Position,  # 每兩次對衝交易利潤，向量;
                #     "Short_Selling_profit_date_transaction" => y_A_Short_Selling,  # 每兩次對衝交易利潤，向量;
                #     "maximum_drawdown" => y_maximum_drawdown,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                #     "maximum_drawdown_Long_Position" => y_maximum_drawdown_Long_Position,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                #     "maximum_drawdown_Short_Selling" => y_maximum_drawdown_Short_Selling,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                #     "Long_Position_drawdown_date_transaction" => y_H_Long_Position,  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                #     "Short_Selling_drawdown_date_transaction" => y_H_Short_Selling,  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                #     "average_price_amplitude_date_transaction" => y_amplitude,  # 兩兩次對衝交易日成交價振幅平方和，均值;
                #     "Long_Position_average_price_amplitude_date_transaction" => y_amplitude_Long_Position,  # 兩兩次對衝交易日成交價振幅平方和，均值;
                #     "Short_Selling_average_price_amplitude_date_transaction" => y_amplitude_Short_Selling,  # 兩兩次對衝交易日成交價振幅平方和，均值;
                #     "Long_Position_price_amplitude_date_transaction" => y_D_Long_Position,  # 兩次對衝交易日成交價振幅平方和，向量;
                #     "Short_Selling_price_amplitude_date_transaction" => y_D_Short_Selling,  # 兩次對衝交易日成交價振幅平方和，向量;
                #     "average_volume_turnover_date_transaction" => y_turnover,  # 兩次對衝交易日成交量（換手率）均值;
                #     "Long_Position_average_volume_turnover_date_transaction" => y_turnover_Long_Position,  # 兩次對衝交易日成交量（換手率）均值;
                #     "Short_Selling_average_volume_turnover_date_transaction" => y_turnover_Short_Selling,  # 兩次對衝交易日成交量（換手率）均值;
                #     "Long_Position_volume_turnover_date_transaction" => y_E_Long_Position,  # 兩次對衝交易日成交量（換手率）向量;
                #     "Short_Selling_volume_turnover_date_transaction" => y_E_Short_Selling,  # 兩次對衝交易日成交量（換手率）向量;
                #     "average_date_transaction_between" => y_date_transaction_between,  # 兩次對衝交易間隔日長，均值;
                #     "Long_Position_average_date_transaction_between" => y_date_transaction_between_Long_Position,  # 兩次對衝交易間隔日長，均值;
                #     "Short_Selling_average_date_transaction_between" => y_date_transaction_between_Short_Selling,  # 兩次對衝交易間隔日長，均值;
                #     "Long_Position_date_transaction_between" => y_C_Long_Position,  # 兩次對衝交易間隔日長，向量;
                #     "Short_Selling_date_transaction_between" => y_C_Short_Selling,  # 兩次對衝交易間隔日長，向量;
                #     "Long_Position_date_transaction" => y_F_Long_Position,  # 按規則執行交易的日期，向量;
                #     "Short_Selling_date_transaction" => y_F_Short_Selling,  # 按規則執行交易的日期，向量;
                #     "P1_Array" => P1_Array,  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
                #     "revenue_and_expenditure_records_date_transaction" => y_G  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
                # );
                # println(training_result["y_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
                # println(training_result["y_Long_Position_profit"]);  # 優化目標變量;
                # println(training_result["y_Short_Selling_profit"]);  # 優化目標變量;
                # println(training_result["y_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
                # println(training_result["y_Long_Position_loss"]);  # 優化目標變量;
                # println(training_result["y_Short_Selling_loss"]);  # 優化目標變量;
                # println(training_result["profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # println(training_result["Long_Position_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # println(training_result["Short_Selling_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # println(training_result["profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
                # println(training_result["Long_Position_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
                # println(training_result["Short_Selling_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
                # println(training_result["profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
                # println(training_result["Long_Position_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
                # println(training_result["Short_Selling_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
                # println(training_result["profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
                # println(training_result["Long_Position_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
                # println(training_result["Short_Selling_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
                # println(training_result["profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
                # println(training_result["Long_Position_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
                # println(training_result["Short_Selling_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
                # println(training_result["Long_Position_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
                # println(training_result["Short_Selling_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
                # println("maximum_drawdown = ", training_result["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # println("maximum_drawdown_Long_Position = ", training_result["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # println("maximum_drawdown_Short_Selling = ", training_result["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # println("Long_Position_drawdown_date_transaction = ", training_result["Long_Position_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # println("Short_Selling_drawdown_date_transaction = ", training_result["Short_Selling_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # println(training_result["average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # println(training_result["Long_Position_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # println(training_result["Short_Selling_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # println(training_result["Long_Position_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
                # println(training_result["Short_Selling_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
                # println(training_result["average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
                # println(training_result["Long_Position_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
                # println(training_result["Short_Selling_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
                # println(training_result["Long_Position_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
                # println(training_result["Short_Selling_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
                # println(training_result["average_date_transaction_between"]);  # 兩次交易間隔日長，均值;
                # println(training_result["Long_Position_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
                # println(training_result["Short_Selling_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
                # println(training_result["Long_Position_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
                # println(training_result["Short_Selling_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
                # println(training_result["Long_Position_date_transaction"]);  # 按規則執行交易的日期，向量;
                # println(training_result["Long_Position_date_transaction"][1]);  # 交易規則自動選取的交易日期;
                # println(training_result["Long_Position_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
                # println(training_result["Long_Position_date_transaction"][3]);  # 交易規則自動選取的成交價;
                # println(training_result["Long_Position_date_transaction"][4]);  # 交易規則自動選取的成交量;
                # println(training_result["Long_Position_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
                # println(training_result["Long_Position_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
                # println(training_result["Long_Position_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
                # println(training_result["Long_Position_date_transaction"][8]);  # 當日總成交量（turnover volume）;
                # println(training_result["Long_Position_date_transaction"][9]);  # 當日開盤（opening）成交價;
                # println(training_result["Long_Position_date_transaction"][10]);  # 當日收盤（closing）成交價;
                # println(training_result["Long_Position_date_transaction"][11]);  # 當日最低（low）成交價;
                # println(training_result["Long_Position_date_transaction"][12]);  # 當日最高（high）成交價;
                # println(training_result["Long_Position_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
                # println(training_result["Long_Position_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
                # println(training_result["Long_Position_date_transaction"][15]);  # 當日每股收益（price earnings）;
                # println(training_result["Long_Position_date_transaction"][16]);  # 當日每股净值（book value per share）;
                # println(training_result["Short_Selling_date_transaction"]);  # 按規則執行交易的日期，向量;
                # println(training_result["Short_Selling_date_transaction"][1]);  # 交易規則自動選取的交易日期;
                # println(training_result["Short_Selling_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
                # println(training_result["Short_Selling_date_transaction"][3]);  # 交易規則自動選取的成交價;
                # println(training_result["Short_Selling_date_transaction"][4]);  # 交易規則自動選取的成交量;
                # println(training_result["Short_Selling_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
                # println(training_result["Short_Selling_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
                # println(training_result["Short_Selling_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
                # println(training_result["Short_Selling_date_transaction"][8]);  # 當日總成交量（turnover volume）;
                # println(training_result["Short_Selling_date_transaction"][9]);  # 當日開盤（opening）成交價;
                # println(training_result["Short_Selling_date_transaction"][10]);  # 當日收盤（closing）成交價;
                # println(training_result["Short_Selling_date_transaction"][11]);  # 當日最低（low）成交價;
                # println(training_result["Short_Selling_date_transaction"][12]);  # 當日最高（high）成交價;
                # println(training_result["Short_Selling_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
                # println(training_result["Short_Selling_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
                # println(training_result["Short_Selling_date_transaction"][15]);  # 當日每股收益（price earnings）;
                # println(training_result["Short_Selling_date_transaction"][16]);  # 當日每股净值（book value per share）;
                # println(training_result["revenue_and_expenditure_records_date_transaction"]);  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
                # println(training_result["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;

                # P1_Array = training_result["P1_Array"];  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;

                # y_profit = training_result["y_Long_Position_profit"];  # 優化目標變量，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
                # y_profit = training_result["y_Short_Selling_profit"];  # 優化目標變量，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
                y_profit = training_result["y_profit"];  # 優化目標變量，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
                # y_loss = training_result["y_Long_Position_loss"];  # 優化目標變量，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
                # y_loss = training_result["y_Short_Selling_loss"];  # 優化目標變量，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
                y_loss = training_result["y_loss"];  # 優化目標變量，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
                # y_total = training_result["profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # y_total_Long_Position = training_result["Long_Position_profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # y_total_Short_Selling = training_result["Short_Selling_profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # y_Positive = training_result["profit_Positive"];  # 每兩次對衝交易收益纍加總計;
                # y_Positive_Long_Position = training_result["Long_Position_profit_Positive"];  # 每兩次對衝交易收益纍加總計;
                # y_Positive_Short_Selling = training_result["Short_Selling_profit_Positive"];  # 每兩次對衝交易收益纍加總計;
                # y_P_Positive = training_result["profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
                # y_P_Positive_Long_Position = training_result["Long_Position_profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
                # y_P_Positive_Short_Selling = training_result["Short_Selling_profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
                # y_Negative = training_result["profit_Negative"];  # 每兩次對衝交易損失纍加總計;
                # y_Negative_Long_Position = training_result["Long_Position_profit_Negative"];  # 每兩次對衝交易損失纍加總計;
                # y_Negative_Short_Selling = training_result["Short_Selling_profit_Negative"];  # 每兩次對衝交易損失纍加總計;
                # y_P_Negative = training_result["profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
                # y_P_Negative_Long_Position = training_result["Long_Position_profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
                # y_P_Negative_Short_Selling = training_result["Short_Selling_profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
                # y_A_Long_Position = training_result["Long_Position_profit_date_transaction"];  # 每兩次對衝交易利潤，向量;
                # y_A_Short_Selling = training_result["Short_Selling_profit_date_transaction"];  # 每兩次對衝交易利潤，向量;
                # y_maximum_drawdown = training_result["maximum_drawdown"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # y_maximum_drawdown_Long_Position = training_result["maximum_drawdown_Long_Position"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # y_maximum_drawdown_Short_Selling = training_result["maximum_drawdown_Short_Selling"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # y_H_Long_Position = training_result["Long_Position_drawdown_date_transaction"];  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # y_H_Short_Selling = training_result["Short_Selling_drawdown_date_transaction"];  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # y_amplitude = training_result["average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # y_amplitude_Long_Position = training_result["Long_Position_average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # y_amplitude_Short_Selling = training_result["Short_Selling_average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # y_D_Long_Position = training_result["Long_Position_price_amplitude_date_transaction"];  # 兩次對衝交易日成交價振幅平方和，向量;
                # y_D_Short_Selling = training_result["Short_Selling_price_amplitude_date_transaction"];  # 兩次對衝交易日成交價振幅平方和，向量;
                # y_turnover = training_result["average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
                # y_turnover_Long_Position = training_result["Long_Position_average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
                # y_turnover_Short_Selling = training_result["Short_Selling_average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
                # y_E_Long_Position = training_result["Long_Position_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）向量;
                # y_E_Short_Selling = training_result["Short_Selling_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）向量;
                # y_date_transaction_between = training_result["average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
                # y_date_transaction_between_Long_Position = training_result["Long_Position_average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
                # y_date_transaction_between_Short_Selling = training_result["Short_Selling_average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
                # y_C_Long_Position = training_result["Long_Position_date_transaction_between"];  # 兩次對衝交易間隔日長，向量;
                # y_C_Short_Selling = training_result["Short_Selling_date_transaction_between"];  # 兩次對衝交易間隔日長，向量;
                # y_F_Long_Position = training_result["Long_Position_date_transaction"];  # 按規則執行交易的日期，向量;
                # y_F_Short_Selling = training_result["Short_Selling_date_transaction"];  # 按規則執行交易的日期，向量;
                # y_G = training_result["revenue_and_expenditure_records_date_transaction"];  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
            end

            # 優化參數 P1, P2 的初始值，使用 push! 函數在數組末尾追加推入新元;
            if Base.length(coefficient_from_fit) === 0
                Base.push!(coefficient_from_fit, P1);
                Base.push!(coefficient_from_fit, P2);
                Base.push!(coefficient_from_fit, P3);
                Base.push!(coefficient_from_fit, P4);
            end

            resultDict_ticker_symbol = Base.Dict{Core.String, Core.Any}();
            # resultDict_ticker_symbol["test_profit"] = test_profit_estimate;
            # resultDict_ticker_symbol["test_odds_ratio"] = test_odds_ratio_estimate;
            # resultDict_ticker_symbol["test_date_transaction_between"] = test_date_transaction_between;
            resultDict_ticker_symbol["Coefficient"] = coefficient_from_fit;  # 擬合得到的參數解;
            # resultDict_ticker_symbol["Coefficient-StandardDeviation"] = margin_of_error;  # 擬合得到的參數解的標準差;
            # resultDict_ticker_symbol["Coefficient-Confidence-Lower-95%"] = [confidence_inter[1][1], confidence_inter[2][1]];  # 擬合得到的參數解的區間估計下限;
            # resultDict_ticker_symbol["Coefficient-Confidence-Upper-95%"] = [confidence_inter[1][2], confidence_inter[2][2]];  # 擬合得到的參數解的區間估計上限;
            resultDict_ticker_symbol["Yfit"] = Yvals;  # 擬合 y 值;
            resultDict_ticker_symbol["Yfit-Uncertainty-Lower"] = YvalsUncertaintyLower;  # 擬合的應變量 Yvals 誤差下限;
            resultDict_ticker_symbol["Yfit-Uncertainty-Upper"] = YvalsUncertaintyUpper;  # 擬合的應變量 Yvals 誤差上限;
            # resultDict_ticker_symbol["Residual"] = Residual;  # 擬合殘差;
            resultDict_ticker_symbol["P1_Array"] = training_result["P1_Array"];  # P1_Array;  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
            resultDict_ticker_symbol["y_profit"] = training_result["y_profit"];  # 最優化目標值，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
            resultDict_ticker_symbol["y_Long_Position_profit"] = training_result["y_Long_Position_profit"];  # 最優化目標值，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
            resultDict_ticker_symbol["y_Short_Selling_profit"] = training_result["y_Short_Selling_profit"];  # 最優化目標值，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
            resultDict_ticker_symbol["y_loss"] = training_result["y_loss"];  # 最優化目標值，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
            resultDict_ticker_symbol["y_Long_Position_loss"] = training_result["y_Long_Position_loss"];  # 最優化目標值，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
            resultDict_ticker_symbol["y_Short_Selling_loss"] = training_result["y_Short_Selling_loss"];  # 最優化目標值，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
            resultDict_ticker_symbol["profit_total"] = training_result["profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
            resultDict_ticker_symbol["Long_Position_profit_total"] = training_result["Long_Position_profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
            resultDict_ticker_symbol["Short_Selling_profit_total"] = training_result["Short_Selling_profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
            resultDict_ticker_symbol["profit_Positive"] = training_result["profit_Positive"];  # 每兩次對衝交易收益纍加總計;
            resultDict_ticker_symbol["Long_Position_profit_Positive"] = training_result["Long_Position_profit_Positive"];  # 每兩次對衝交易收益纍加總計;
            resultDict_ticker_symbol["Short_Selling_profit_Positive"] = training_result["Short_Selling_profit_Positive"];  # 每兩次對衝交易收益纍加總計;
            resultDict_ticker_symbol["profit_Positive_probability"] = training_result["profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
            resultDict_ticker_symbol["Long_Position_profit_Positive_probability"] = training_result["Long_Position_profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
            resultDict_ticker_symbol["Short_Selling_profit_Positive_probability"] = training_result["Short_Selling_profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
            resultDict_ticker_symbol["profit_Negative"] = training_result["profit_Negative"];  # 每兩次對衝交易損失纍加總計;
            resultDict_ticker_symbol["Long_Position_profit_Negative"] = training_result["Long_Position_profit_Negative"];  # 每兩次對衝交易損失纍加總計;
            resultDict_ticker_symbol["Short_Selling_profit_Negative"] = training_result["Short_Selling_profit_Negative"];  # 每兩次對衝交易損失纍加總計;
            resultDict_ticker_symbol["profit_Negative_probability"] = training_result["profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
            resultDict_ticker_symbol["Long_Position_profit_Negative_probability"] = training_result["Long_Position_profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
            resultDict_ticker_symbol["Short_Selling_profit_Negative_probability"] = training_result["Short_Selling_profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
            resultDict_ticker_symbol["Long_Position_profit_date_transaction"] = training_result["Long_Position_profit_date_transaction"];  # 每兩次對衝交易利潤，向量;
            resultDict_ticker_symbol["Short_Selling_profit_date_transaction"] = training_result["Short_Selling_profit_date_transaction"];  # 每兩次對衝交易利潤，向量;
            resultDict_ticker_symbol["maximum_drawdown"] = training_result["maximum_drawdown"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            resultDict_ticker_symbol["maximum_drawdown_Long_Position"] = training_result["maximum_drawdown_Long_Position"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            resultDict_ticker_symbol["maximum_drawdown_Short_Selling"] = training_result["maximum_drawdown_Short_Selling"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            resultDict_ticker_symbol["Long_Position_drawdown_date_transaction"] = training_result["Long_Position_drawdown_date_transaction"];  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
            resultDict_ticker_symbol["Short_Selling_drawdown_date_transaction"] = training_result["Short_Selling_drawdown_date_transaction"];  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
            resultDict_ticker_symbol["average_price_amplitude_date_transaction"] = training_result["average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
            resultDict_ticker_symbol["Long_Position_average_price_amplitude_date_transaction"] = training_result["Long_Position_average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
            resultDict_ticker_symbol["Short_Selling_average_price_amplitude_date_transaction"] = training_result["Short_Selling_average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
            resultDict_ticker_symbol["Long_Position_price_amplitude_date_transaction"] = training_result["Long_Position_price_amplitude_date_transaction"];  # 兩次對衝交易日成交價振幅平方和，向量;
            resultDict_ticker_symbol["Short_Selling_price_amplitude_date_transaction"] = training_result["Short_Selling_price_amplitude_date_transaction"];  # 兩次對衝交易日成交價振幅平方和，向量;
            resultDict_ticker_symbol["average_volume_turnover_date_transaction"] = training_result["average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
            resultDict_ticker_symbol["Long_Position_average_volume_turnover_date_transaction"] = training_result["Long_Position_average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
            resultDict_ticker_symbol["Short_Selling_average_volume_turnover_date_transaction"] = training_result["Short_Selling_average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
            resultDict_ticker_symbol["Long_Position_volume_turnover_date_transaction"] = training_result["Long_Position_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）向量;
            resultDict_ticker_symbol["Short_Selling_volume_turnover_date_transaction"] = training_result["Short_Selling_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）向量;
            resultDict_ticker_symbol["average_date_transaction_between"] = training_result["average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
            resultDict_ticker_symbol["Long_Position_average_date_transaction_between"] = training_result["Long_Position_average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
            resultDict_ticker_symbol["Short_Selling_average_date_transaction_between"] = training_result["Short_Selling_average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
            resultDict_ticker_symbol["Long_Position_date_transaction_between"] = training_result["Long_Position_date_transaction_between"];  # 兩次對衝交易間隔日長，向量;
            resultDict_ticker_symbol["Short_Selling_date_transaction_between"] = training_result["Short_Selling_date_transaction_between"];  # 兩次對衝交易間隔日長，向量;
            resultDict_ticker_symbol["Long_Position_date_transaction"] = training_result["Long_Position_date_transaction"];  # 按規則執行交易的日期，向量;
            resultDict_ticker_symbol["Short_Selling_date_transaction"] = training_result["Short_Selling_date_transaction"];  # 按規則執行交易的日期，向量;
            resultDict_ticker_symbol["revenue_and_expenditure_records_date_transaction"] = training_result["revenue_and_expenditure_records_date_transaction"];  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
            resultDict_ticker_symbol["weight_MarketTiming"] = training_result["weight_MarketTiming"];  # 擇時權重，每兩次對衝交易的盈利概率占比;
            # resultDict_ticker_symbol["testData"] = test_result;  # 傳入測試數據集的計算結果;
            # resultDict_ticker_symbol["Curve-fit-image"] = img1;  # 擬合曲綫繪圖;
            # resultDict_ticker_symbol["Residual-image"] = img2;  # 擬合殘差繪圖;

            # resultDict = Base.Dict{Core.String, Core.Any}();
            resultDict[key] = resultDict_ticker_symbol;
            resultDict_ticker_symbol = Core.nothing;  # 釋放内存;
        end
    end

    # 讀取從函數參數傳入的測試數據集;
    # testing_date_transaction = Core.Array{Dates.Date, 1}();  # 測試集數據交易日期;
    # testing_opening_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日首筆成交價（開盤價）;
    # testing_close_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日尾筆成交價（收盤價）;
    # testing_low_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日最低成交價;
    # testing_high_price = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日最高成交價;
    # testing_turnover_volume = Core.Array{Core.Union{Core.UInt64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日總成交量;
    # testing_turnover_amount = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日總成交金額;
    # testing_turnover_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據交易日換手率;
    # testing_price_earnings = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據市盈率;
    # testing_book_value_per_share = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集數據净值;
    testData = Base.Dict{Core.String, Core.Any}();
    if Base.isa(testing_data, Base.Dict) && Base.length(testing_data) > 0

        testData = testing_data;

        # if Base.haskey(testing_data, "date_transaction") && Base.length(testing_data["date_transaction"]) > 0
        #     testing_date_transaction = testing_data["date_transaction"];
        # end
        # if Base.haskey(testing_data, "turnover_volume") && Base.length(testing_data["turnover_volume"]) > 0
        #     testing_turnover_volume = testing_data["turnover_volume"];
        # end
        # if Base.haskey(testing_data, "turnover_amount") && Base.length(testing_data["turnover_amount"]) > 0
        #     testing_turnover_amount = testing_data["turnover_amount"];
        # end
        # if Base.haskey(testing_data, "opening_price") && Base.length(testing_data["opening_price"]) > 0
        #     testing_opening_price = testing_data["opening_price"];
        # end
        # if Base.haskey(testing_data, "close_price") && Base.length(testing_data["close_price"]) > 0
        #     testing_close_price = testing_data["close_price"];
        # end
        # if Base.haskey(testing_data, "low_price") && Base.length(testing_data["low_price"]) > 0
        #     testing_low_price = testing_data["low_price"];
        # end
        # if Base.haskey(testing_data, "high_price") && Base.length(testing_data["high_price"]) > 0
        #     testing_high_price = testing_data["high_price"];
        # end
        # if Base.haskey(testing_data, "turnover_rate") && Base.length(testing_data["turnover_rate"]) > 0
        #     testing_turnover_rate = testing_data["turnover_rate"];
        # end
        # if Base.haskey(testing_data, "price_earnings") && Base.length(testing_data["price_earnings"]) > 0
        #     testing_price_earnings = testing_data["price_earnings"];
        # end
        # if Base.haskey(testing_data, "book_value_per_share") && Base.length(testing_data["book_value_per_share"]) > 0
        #     testing_book_value_per_share = testing_data["book_value_per_share"];
        # end

        # # 遍歷字典的鍵:值對;
        # for (key, value) in testing_data
        #     # println("Key: $key, Value: $value");

        #     # date_i = key;
        #     # date_i = Dates.Date(date_i);
        #     # # if Core.isa(key, Core.String)
        #     # #     # key === "" # Base.occursin("=", key)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     # #     date_i = key;
        #     # #     # date_i = Base.string(key);
        #     # #     date_i = Dates.Date(date_i);
        #     # # elseif key <: Core.UInt
        #     # #     # date_i = Core.UInt64(key);
        #     # #     # the_Unix_time = Dates.datetime2unix(now_day);  # 1.723206581518e9 seconds  # 轉換爲時間戳;
        #     # #     # the_date_time = Dates.unix2datetime(the_Unix_time);  # 2024-08-09T12:29:41.518  # 將時間戳轉換爲時間對象;
        #     # #     date_i = Dates.unix2datetime(key);  # 將時間戳轉換爲時間對象;
        #     # # elseif Core.isa(key, Dates.Date)
        #     # #     date_i = key;
        #     # # else
        #     # # end
        #     # Base.push!(testing_date_transaction, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     # if Base.isa(value, Base.Dict) && Base.length(value) > 0
        #     #     for (key_1, value_1) in value
        #     #         if Base.string(key_1) === Base.string("turnover_volume")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.UInt
        #     #             # #     date_i = Core.UInt64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_turnover_volume, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("turnover_amount")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_turnover_amount, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("opening_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_opening_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("close_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_close_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("low_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_low_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("high_price")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_high_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("turnover_rate")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_turnover_rate, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("price_earnings")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_price_earnings, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #         if Base.string(key_1) === Base.string("book_value_per_share")
        #     #             date_i = value_1;
        #     #             # if Base.isnothing(value_1)
        #     #             #     date_i = Core.nothing;
        #     #             # elseif Core.isa(value_1, Core.String) && value_1 === ""
        #     #             #     # Base.occursin("=", value_1)  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #             #     date_i = Base.string("");
        #     #             # # elseif value_1 <: Core.Float
        #     #             # #     date_i = Core.Float64(value_1);
        #     #             # else
        #     #             #     date_i = value_1;
        #     #             # end
        #     #             Base.push!(testing_book_value_per_share, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #         end
        #     #     end
        #     # end

        #     # if Base.string(key) === Base.string("date_transaction")
        #     #     testing_date_transaction = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string(value[i]);
        #     #     #         # # elseif value[i] <: Core.UInt
        #     #     #         # #     # date_i = Core.UInt64(value[i]);
        #     #     #         # #     # the_Unix_time = Dates.datetime2unix(now_day);  # 1.723206581518e9 seconds  # 轉換爲時間戳;
        #     #     #         # #     # the_date_time = Dates.unix2datetime(the_Unix_time);  # 2024-08-09T12:29:41.518  # 將時間戳轉換爲時間對象;
        #     #     #         # #     date_i = Dates.unix2datetime(value[i]);  # 將時間戳轉換爲時間對象;
        #     #     #         # # elseif Core.isa(value[i], Dates.Date)
        #     #     #         # #     date_i = Dates.Date(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_date_transaction, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_date_transaction = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("turnover_volume")
        #     #     testing_turnover_volume = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.UInt
        #     #     #         # #     date_i = Core.UInt64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_turnover_volume, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_turnover_volume = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("turnover_amount")
        #     #     testing_turnover_amount = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_turnover_amount, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_turnover_amount = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("opening_price")
        #     #     testing_opening_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_opening_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_opening_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("close_price")
        #     #     testing_close_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_close_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_close_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("low_price")
        #     #     testing_low_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_low_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_low_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("high_price")
        #     #     testing_high_price = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_high_price, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_high_price = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("turnover_rate")
        #     #     testing_turnover_rate = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_turnover_rate, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_turnover_rate = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("price_earnings")
        #     #     testing_price_earnings = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_price_earnings, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_price_earnings = value;
        #     #     # end
        #     # end
        #     # if Base.string(key) === Base.string("book_value_per_share")
        #     #     testing_book_value_per_share = value;
        #     #     # if Base.typeof(value) <: Core.Array && Base.length(value) > 0
        #     #     #     for i = 1:Base.length(value)
        #     #     #         date_i = value[i];
        #     #     #         # if Base.isnothing(value[i])
        #     #     #         #     date_i = Core.nothing;
        #     #     #         # elseif Core.isa(value[i], Core.String) && value[i] === ""
        #     #     #         #     # Base.occursin("=", value[i])  # 判斷字符串中是否包含等號（"="）子字符串;
        #     #     #         #     date_i = Base.string("");
        #     #     #         # # elseif value[i] <: Core.Float
        #     #     #         # #     date_i = Core.Float64(value[i]);
        #     #     #         # else
        #     #     #         #     date_i = value[i];
        #     #     #         # end
        #     #     #         Base.push!(testing_book_value_per_share, date_i);  # 使用 push! 函數在數組末尾追加推入新元素;
        #     #     #     end
        #     #     # else
        #     #     #     testing_book_value_per_share = value;
        #     #     # end
        #     # end
        # end
        # # 遍歷字典的鍵;
        # for value in values(testing_data)
        #     println("Value: $value")
        # end
        # # 遍歷字典的值;
        # for key in keys(testing_data)
        #     println("Key: $key")
        # end
    end
    # println(testData);

    # 計算測試集日棒缐（K Line Daily）數據本徵（characteristic）;
    if Base.isa(testData, Base.Dict) && Base.length(testData) > 0

        # 求解各股票裏的最長交易天數;
        maximum_dates_transaction_test = Core.Int64(0);
        for (key, value) in testData
            # println("Key: $key, Value: $value");
            if Base.isa(value, Base.Dict)
                if Base.haskey(value, "date_transaction") && Base.typeof(value["date_transaction"]) <: Core.Array
                    if Core.Int64(Base.length(value["date_transaction"])) > Core.Int64(maximum_dates_transaction_test)
                        maximum_dates_transaction_test_2 = Core.Int64(Base.length(value["date_transaction"]));
                        maximum_dates_transaction_test *= Core.Int64(0);
                        maximum_dates_transaction_test += Core.Int64(maximum_dates_transaction_test_2);
                    end
                end
                if Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array
                    if Core.Int64(Base.length(value["turnover_volume"])) > Core.Int64(maximum_dates_transaction_test)
                        maximum_dates_transaction_test_2 = Core.Int64(Base.length(value["turnover_volume"]));
                        maximum_dates_transaction_test *= Core.Int64(0);
                        maximum_dates_transaction_test += Core.Int64(maximum_dates_transaction_test_2);
                    end
                end
                if Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array
                    if Core.Int64(Base.length(value["opening_price"])) > Core.Int64(maximum_dates_transaction_test)
                        maximum_dates_transaction_test_2 = Core.Int64(Base.length(value["opening_price"]));
                        maximum_dates_transaction_test *= Core.Int64(0);
                        maximum_dates_transaction_test += Core.Int64(maximum_dates_transaction_test_2);
                    end
                end
                if Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array
                    if Core.Int64(Base.length(value["close_price"])) > Core.Int64(maximum_dates_transaction_test)
                        maximum_dates_transaction_test_2 = Core.Int64(Base.length(value["close_price"]));
                        maximum_dates_transaction_test *= Core.Int64(0);
                        maximum_dates_transaction_test += Core.Int64(maximum_dates_transaction_test_2);
                    end
                end
                if Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array
                    if Core.Int64(Base.length(value["low_price"])) > Core.Int64(maximum_dates_transaction_test)
                        maximum_dates_transaction_test_2 = Core.Int64(Base.length(value["low_price"]));
                        maximum_dates_transaction_test *= Core.Int64(0);
                        maximum_dates_transaction_test += Core.Int64(maximum_dates_transaction_test_2);
                    end
                end
                if Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array
                    if Core.Int64(Base.length(value["high_price"])) > Core.Int64(maximum_dates_transaction_test)
                        maximum_dates_transaction_test_2 = Core.Int64(Base.length(value["high_price"]));
                        maximum_dates_transaction_test *= Core.Int64(0);
                        maximum_dates_transaction_test += Core.Int64(maximum_dates_transaction_test_2);
                    end
                end
            end
        end
        # println(maximum_dates_transaction_test);

        for (key, value) in testData

            # 計算測試集日棒缐（K Line Daily）數據本徵（characteristic）;
            testing_focus = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的重心值（Focus）;
            testing_amplitude = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
            testing_amplitude_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
            testing_opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
            testing_closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
            testing_low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日最低成交價標準化;
            testing_high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日最高成交價標準化;
            testing_turnover_volume_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
            testing_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
            testing_closing_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
            testing_closing_minus_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
            testing_high_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
            testing_low_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
            if Base.isa(value, Base.Dict) && Base.length(value) > 0

                if (Base.haskey(value, "turnover_volume") && Base.typeof(value["turnover_volume"]) <: Core.Array && Base.length(value["turnover_volume"]) > 0) && (Base.haskey(value, "opening_price") && Base.typeof(value["opening_price"]) <: Core.Array && Base.length(value["opening_price"]) > 0) && (Base.haskey(value, "close_price") && Base.typeof(value["close_price"]) <: Core.Array && Base.length(value["close_price"]) > 0) && (Base.haskey(value, "low_price") && Base.typeof(value["low_price"]) <: Core.Array && Base.length(value["low_price"]) > 0) && (Base.haskey(value, "high_price") && Base.typeof(value["high_price"]) <: Core.Array && Base.length(value["high_price"]) > 0)

                    # 計算測試集日棒缐（K Line Daily）數據的最少數目（minimum count time series）;
                    # testing_minimum_count_time_series::Core.UInt64 = Core.UInt64(0);
                    # testing_minimum_count_time_series = (+Base.Inf);
                    testing_minimum_count_time_series = Core.UInt64(Base.findmin([Base.length(value["turnover_volume"]), Base.length(value["opening_price"]), Base.length(value["close_price"]), Base.length(value["low_price"]), Base.length(value["high_price"])])[1]);
                    # testing_minimum_count_time_series = Core.UInt64(Base.findmin([Base.length(testing_turnover_volume), Base.length(testing_opening_price), Base.length(testing_close_price), Base.length(testing_low_price), Base.length(testing_high_price)])[1]);

                    if testing_minimum_count_time_series > 0

                        # 計算測試集日棒缐（K Line Daily）數據本徵（characteristic）;
                        # testing_focus = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                        # testing_amplitude = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                        # testing_amplitude_rate = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                        # testing_opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                        # testing_closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                        # testing_low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                        # testing_high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing, Base.Missing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                        # testing_turnover_volume_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
                        # testing_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                        # testing_closing_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                        # testing_closing_minus_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                        # testing_high_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                        # testing_low_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                        for i = 1:testing_minimum_count_time_series

                            # 計算日棒缐（K Line Daily）數據的重心值（Focus）序列;
                            date_i_focus = Statistics.mean([value["opening_price"][i], value["close_price"][i], value["low_price"][i], value["high_price"][i]]);
                            date_i_focus = Core.Float64(date_i_focus);
                            Base.push!(testing_focus, date_i_focus);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 計算日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）序列;
                            date_i_amplitude = Statistics.std(
                                [
                                    value["opening_price"][i],
                                    value["close_price"][i],
                                    value["low_price"][i],
                                    value["high_price"][i]
                                ];
                                corrected = true
                            );
                            # if Core.Int64(Base.length([opening_price[i], close_price[i], low_price[i], high_price[i]])) === Core.Int64(1)
                            #     date_i_amplitude = Statistics.std([opening_price[i], close_price[i], low_price[i], high_price[i]]; corrected=false);
                            # elseif Core.Int64(Base.length([opening_price[i], close_price[i], low_price[i], high_price[i]])) > Core.Int64(1)
                            #     date_i_amplitude = Statistics.std([opening_price[i], close_price[i], low_price[i], high_price[i]]; corrected=true);
                            # else
                            # end
                            date_i_amplitude = Core.Float64(date_i_amplitude);
                            Base.push!(testing_amplitude, date_i_amplitude);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 計算日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）序列;
                            date_i_amplitude_rate = Core.Float64(date_i_amplitude);  # Base.missing;  # Core.nothing;  # +Base.Inf;
                            if Core.Float64(date_i_focus) === Core.Float64(0.0)
                                date_i_amplitude_rate = (+Base.Inf);  # Core.Float64(date_i_amplitude);
                            else
                                date_i_amplitude_rate = Core.Float64(date_i_amplitude / date_i_focus);
                            end
                            Base.push!(testing_amplitude_rate, date_i_amplitude_rate);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 測試集日棒缐（K Line Daily）數據標準化（Standardization）轉換;
                            # testing_opening_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                            # testing_closing_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                            # testing_low_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                            # testing_high_price_Standardization = Core.Array{Core.Union{Core.Float64, Core.String, Core.Nothing}, 1}();  # 測試集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                            date_i_opening_price_Standardization = value["opening_price"][i];
                            date_i_closing_price_Standardization = value["close_price"][i];
                            date_i_low_price_Standardization = value["low_price"][i];
                            date_i_high_price_Standardization = value["high_price"][i];
                            if Core.Float64(value["amplitude"][i]) === Core.Float64(0.0)
                                date_i_opening_price_Standardization = Core.Float64(value["opening_price"][i] - value["focus"][i]);
                                date_i_closing_price_Standardization = Core.Float64(value["close_price"][i] - value["focus"][i]);
                                date_i_low_price_Standardization = Core.Float64(value["low_price"][i] - value["focus"][i]);
                                date_i_high_price_Standardization = Core.Float64(value["high_price"][i] - value["focus"][i]);
                            else
                                date_i_opening_price_Standardization = Core.Float64((value["opening_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                                date_i_closing_price_Standardization = Core.Float64((value["close_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                                date_i_low_price_Standardization = Core.Float64((value["low_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                                date_i_high_price_Standardization = Core.Float64((value["high_price"][i] - value["focus"][i]) / value["amplitude"][i]);
                            end
                            Base.push!(testing_opening_price_Standardization, date_i_opening_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                            Base.push!(testing_closing_price_Standardization, date_i_closing_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                            Base.push!(testing_low_price_Standardization, date_i_low_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;
                            Base.push!(testing_high_price_Standardization, date_i_high_price_Standardization);  # 使用 push! 函數在數組末尾追加推入新元素;

                            # 計算相鄰兩個交易日之間成交股票數量的變化率值的序列，並保存入 1 維數組;
                            # testing_turnover_volume_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間成交股票數量的變化率值;x_growth_rate = Base.missing;
                            if Core.Int64(i) < Core.Int64(2)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            else
                                if Core.Int64(value["turnover_volume"][i - 1]) !== Core.Int64(0)
                                    x_growth_rate = Core.Float64(value["turnover_volume"][i] / value["turnover_volume"][i - 1]) - Core.Float64(1.0);
                                elseif Core.Int64(value["turnover_volume"][i - 1]) === Core.Int64(0) && Core.Int64(value["turnover_volume"][i]) === Core.Int64(0)
                                    x_growth_rate = Core.Float64(0.0);
                                    # x_growth_rate = Base.missing;
                                    # x_growth_rate = Core.nothing;
                                elseif Core.Int64(value["turnover_volume"][i - 1]) === Core.Int64(0) && Core.Int64(value["turnover_volume"][i]) > Core.Int64(0)
                                    x_growth_rate = (+Base.Inf);
                                elseif Core.Int64(value["turnover_volume"][i - 1]) === Core.Int64(0) && Core.Int64(value["turnover_volume"][i]) < Core.Int64(0)
                                    x_growth_rate = (-Base.Inf);
                                else
                                end
                            end
                            # println(x_growth_rate);
                            Base.push!(testing_turnover_volume_growth_rate, x_growth_rate);  # 使用 push! 函數在數組末尾追加推入新元;

                            # 計算相鄰兩個交易日之間開盤股票價格的變化率值的序列，並保存入 1 維數組;
                            # testing_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                            x_growth_rate = Base.missing;
                            if Core.Int64(i) < Core.Int64(2)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            else
                                if Core.Float64(value["opening_price"][i - 1]) !== Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(value["opening_price"][i] / value["opening_price"][i - 1]) - Core.Float64(1.0);
                                elseif Core.Float64(value["opening_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["opening_price"][i]) === Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(0.0);
                                    # x_growth_rate = Base.missing;
                                    # x_growth_rate = Core.nothing;
                                elseif Core.Float64(value["opening_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["opening_price"][i]) > Core.Float64(0.0)
                                    x_growth_rate = (+Base.Inf);
                                elseif Core.Float64(value["opening_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["opening_price"][i]) < Core.Float64(0.0)
                                    x_growth_rate = (-Base.Inf);
                                else
                                end
                            end
                            # println(x_growth_rate);
                            Base.push!(testing_opening_price_growth_rate, x_growth_rate);

                            # 計算相鄰兩個交易日之間收盤股票價格的變化率值的序列，並保存入 1 維數組;
                            # testing_closing_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                            x_growth_rate = Base.missing;
                            if Core.Int64(i) < Core.Int64(2)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            else
                                if Core.Float64(value["close_price"][i - 1]) !== Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(value["close_price"][i] / value["close_price"][i - 1]) - Core.Float64(1.0);
                                elseif Core.Float64(value["close_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) === Core.Float64(0.0)
                                    x_growth_rate = Core.Float64(0.0);
                                    # x_growth_rate = Base.missing;
                                    # x_growth_rate = Core.nothing;
                                elseif Core.Float64(value["close_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) > Core.Float64(0.0)
                                    x_growth_rate = (+Base.Inf);
                                elseif Core.Float64(value["close_price"][i - 1]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) < Core.Float64(0.0)
                                    x_growth_rate = (-Base.Inf);
                                else
                                end
                            end
                            # println(x_growth_rate);
                            Base.push!(testing_closing_price_growth_rate, x_growth_rate);

                            # 計算每個交易日股票收盤價格減去開盤價格的變化率值的序列，並保存入 1 維數組;
                            # testing_closing_minus_opening_price_growth_rate = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                            x_growth_rate = Base.missing;
                            if Core.Float64(value["opening_price"][i]) !== Core.Float64(0.0)
                                x_growth_rate = Core.Float64(value["close_price"][i] / value["opening_price"][i]) - Core.Float64(1.0);
                            elseif Core.Float64(value["opening_price"][i]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) === Core.Float64(0.0)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            elseif Core.Float64(value["opening_price"][i]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) > Core.Float64(0.0)
                                x_growth_rate = (+Base.Inf);
                            elseif Core.Float64(value["opening_price"][i]) === Core.Float64(0.0) && Core.Float64(value["close_price"][i]) < Core.Float64(0.0)
                                x_growth_rate = (-Base.Inf);
                            else
                            end
                            # println(x_growth_rate);
                            Base.push!(testing_closing_minus_opening_price_growth_rate, x_growth_rate);  # 使用 push! 函數在數組末尾追加推入新元;

                            # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值的序列，並保存入 1 維數組;
                            # testing_high_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                            x_growth_rate = Base.missing;
                            if Core.Float64(value["high_price"][i]) !== Core.Float64(0.0)
                                x_growth_rate = Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) / Core.Float64(value["high_price"][i]);
                            elseif Core.Float64(value["high_price"][i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            elseif Core.Float64(value["high_price"][i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) > Core.Float64(0.0)
                                x_growth_rate = (+Base.Inf);
                            elseif Core.Float64(value["high_price"][i]) === Core.Float64(0.0) && Core.Float64(Base.findmax([value["opening_price"][i], value["close_price"][i]])[1]) < Core.Float64(0.0)
                                x_growth_rate = (-Base.Inf);
                            else
                            end
                            # println(x_growth_rate);
                            Base.push!(testing_high_price_proportion, x_growth_rate);

                            # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值的序列，並保存入 1 維數組;
                            # testing_low_price_proportion = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                            x_growth_rate = Base.missing;
                            if Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) !== Core.Float64(0.0)
                                x_growth_rate = Core.Float64(value["low_price"][i]) / Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]);
                            elseif Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0) && Core.Float64(value["low_price"][i]) === Core.Float64(0.0)
                                x_growth_rate = Core.Float64(0.0);
                                # x_growth_rate = Base.missing;
                                # x_growth_rate = Core.nothing;
                            elseif Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0) && Core.Float64(value["low_price"][i]) > Core.Float64(0.0)
                                x_growth_rate = (+Base.Inf);
                            elseif Core.Float64(Base.findmin([value["opening_price"][i], value["close_price"][i]])[1]) === Core.Float64(0.0) && Core.Float64(value["low_price"][i]) < Core.Float64(0.0)
                                x_growth_rate = (-Base.Inf);
                            else
                            end
                            # println(x_growth_rate);
                            Base.push!(testing_low_price_proportion, x_growth_rate);
                        end
                        # testData[key]["focus"] = testing_focus;
                        # testData[key]["amplitude"] = testing_amplitude;
                        # testData[key]["amplitude_rate"] = testing_amplitude_rate;
                        # testData[key]["opening_price_Standardization"] = testing_opening_price_Standardization;
                        # testData[key]["closing_price_Standardization"] = testing_closing_price_Standardization;
                        # testData[key]["low_price_Standardization"] = testing_low_price_Standardization;
                        # testData[key]["high_price_Standardization"] = testing_high_price_Standardization;
                        # testData[key]["turnover_volume_growth_rate"] = testing_turnover_volume_growth_rate;
                        # testData[key]["opening_price_growth_rate"] = testing_opening_price_growth_rate;
                        # testData[key]["closing_price_growth_rate"] = testing_closing_price_growth_rate;
                        # testData[key]["closing_minus_opening_price_growth_rate"] = testing_closing_minus_opening_price_growth_rate;
                        # testData[key]["high_price_proportion"] = testing_high_price_proportion;
                        # testData[key]["low_price_proportion"] = testing_low_price_proportion;
                        # # 釋放内存;
                        # testing_focus = Core.nothing;
                        # testing_amplitude = Core.nothing;
                        # testing_amplitude_rate = Core.nothing;
                        # testing_opening_price_Standardization = Core.nothing;
                        # testing_closing_price_Standardization = Core.nothing;
                        # testing_low_price_Standardization = Core.nothing;
                        # testing_high_price_Standardization = Core.nothing;
                        # testing_turnover_volume_growth_rate = Core.nothing;
                        # testing_opening_price_growth_rate = Core.nothing;
                        # testing_closing_price_growth_rate = Core.nothing;
                        # testing_closing_minus_opening_price_growth_rate = Core.nothing;
                        # testing_high_price_proportion = Core.nothing;
                        # testing_low_price_proportion = Core.nothing;
                    end
                end

                # 從 testData 讀出;
                if Base.haskey(value, "focus") && Base.typeof(value["focus"]) <: Core.Array
                    testing_focus = value["focus"];  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                end
                if Base.haskey(value, "amplitude") && Base.typeof(value["amplitude"]) <: Core.Array
                    testing_amplitude = value["amplitude"];  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                end
                if Base.haskey(value, "amplitude_rate") && Base.typeof(value["amplitude_rate"]) <: Core.Array
                    testing_amplitude_rate = value["amplitude_rate"];  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                end
                if Base.haskey(value, "opening_price_Standardization") && Base.typeof(value["opening_price_Standardization"]) <: Core.Array
                    testing_opening_price_Standardization = value["opening_price_Standardization"];  # 測試集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                end
                if Base.haskey(value, "closing_price_Standardization") && Base.typeof(value["closing_price_Standardization"]) <: Core.Array
                    testing_closing_price_Standardization = value["closing_price_Standardization"];  # 測試集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                end
                if Base.haskey(value, "low_price_Standardization") && Base.typeof(value["low_price_Standardization"]) <: Core.Array
                    testing_low_price_Standardization = value["low_price_Standardization"];  # 測試集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                end
                if Base.haskey(value, "high_price_Standardization") && Base.typeof(value["high_price_Standardization"]) <: Core.Array
                    testing_high_price_Standardization = value["high_price_Standardization"];  # 測試集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                end
                if Base.haskey(value, "turnover_volume_growth_rate") && Base.typeof(value["turnover_volume_growth_rate"]) <: Core.Array
                    testing_turnover_volume_growth_rate = value["turnover_volume_growth_rate"];  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
                end
                if Base.haskey(value, "opening_price_growth_rate") && Base.typeof(value["opening_price_growth_rate"]) <: Core.Array
                    testing_opening_price_growth_rate = value["opening_price_growth_rate"];  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                end
                if Base.haskey(value, "closing_price_growth_rate") && Base.typeof(value["closing_price_growth_rate"]) <: Core.Array
                    testing_closing_price_growth_rate = value["closing_price_growth_rate"];  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                end
                if Base.haskey(value, "closing_minus_opening_price_growth_rate") && Base.typeof(value["closing_minus_opening_price_growth_rate"]) <: Core.Array
                    testing_closing_minus_opening_price_growth_rate = value["closing_minus_opening_price_growth_rate"];  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                end
                if Base.haskey(value, "high_price_proportion") && Base.typeof(value["high_price_proportion"]) <: Core.Array
                    testing_high_price_proportion = value["high_price_proportion"];  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                end
                if Base.haskey(value, "low_price_proportion") && Base.typeof(value["low_price_proportion"]) <: Core.Array
                    testing_low_price_proportion = value["low_price_proportion"];  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                end

                # # 向 testData 寫入;
                # if !Base.haskey(value, "focus")
                #     testData[key]["focus"] = testing_focus;  # 日棒缐（K Line Daily）數據的重心值（Focus）;
                # end
                # if !Base.haskey(value, "amplitude")
                #     testData[key]["amplitude"] = testing_amplitude;  # 日棒缐（K Line Daily）數據的變化程度標示（絕對振幅）（Amplitude）;
                # end
                # if !Base.haskey(value, "amplitude_rate")
                #     testData[key]["amplitude_rate"] = testing_amplitude_rate;  # 日棒缐（K Line Daily）數據的變化程度標示（相對振幅（%））（Amplitude%）;
                # end
                # if !Base.haskey(value, "opening_price_Standardization")
                #     testData[key]["opening_price_Standardization"] = testing_opening_price_Standardization;  # 測試集日棒缐（K Line Daily）數據交易日首筆成交價（開盤價）標準化;
                # end
                # if !Base.haskey(value, "closing_price_Standardization")
                #     testData[key]["closing_price_Standardization"] = testing_closing_price_Standardization;  # 測試集日棒缐（K Line Daily）數據交易日尾筆成交價（收盤價）標準化;
                # end
                # if !Base.haskey(value, "low_price_Standardization")
                #     testData[key]["low_price_Standardization"] = testing_low_price_Standardization;  # 測試集日棒缐（K Line Daily）數據交易日最低成交價標準化;
                # end
                # if !Base.haskey(value, "high_price_Standardization")
                #     testData[key]["high_price_Standardization"] = testing_high_price_Standardization;  # 測試集日棒缐（K Line Daily）數據交易日最高成交價標準化;
                # end
                # if !Base.haskey(value, "turnover_volume_growth_rate")
                #     testData[key]["turnover_volume_growth_rate"] = testing_turnover_volume_growth_rate;  # 計算相鄰兩個交易日之間成交股票數量的變化率值;
                # end
                # if !Base.haskey(value, "opening_price_growth_rate")
                #     testData[key]["opening_price_growth_rate"] = testing_opening_price_growth_rate;  # 計算相鄰兩個交易日之間開盤股票價格的變化率值;
                # end
                # if !Base.haskey(value, "closing_price_growth_rate")
                #     testData[key]["closing_price_growth_rate"] = testing_closing_price_growth_rate;  # 計算相鄰兩個交易日之間收盤股票價格的變化率值;
                # end
                # if !Base.haskey(value, "closing_minus_opening_price_growth_rate")
                #     testData[key]["closing_minus_opening_price_growth_rate"] = testing_closing_minus_opening_price_growth_rate;  # 計算每個交易日股票收盤價格減去開盤價格的變化率值;
                # end
                # if !Base.haskey(value, "high_price_proportion")
                #     testData[key]["high_price_proportion"] = testing_high_price_proportion;  # 計算每個交易日股票收盤價和開盤價裏的最大值占最高價的比例值;
                # end
                # if !Base.haskey(value, "low_price_proportion")
                #     testData[key]["low_price_proportion"] = testing_low_price_proportion;  # 計算每個交易日股票最低價占收盤價和開盤價裏的最小值的比例值;
                # end
            end

            YdataMean = testing_focus;
            YdataSTD = testing_amplitude_rate;  # testing_amplitude;
            Xdata = [Core.UInt64(i) for i in 1:Base.length(YdataMean)];
            if Base.typeof(testing_focus) <: Core.Array && Base.typeof(testing_amplitude) <: Core.Array && Base.typeof(testing_amplitude_rate) <: Core.Array
                # 觀測值（Observation）;
                # 求 Ydata 均值向量;
                YdataMean = testing_focus;
                # YdataMean = Core.Array{Core.Float64, 1}();
                # for i = 1:Base.length(Ydata)
                #     if Base.typeof(Ydata[i]) <: Core.Array
                #         yMean = Core.Float64(Statistics.mean(Ydata[i]));
                #         Base.push!(YdataMean, yMean);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     else
                #         yMean = Core.Float64(Ydata[i]);
                #         Base.push!(YdataMean, yMean);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     end
                # end
                # println(YdataMean);
                # # 求 Ydata 標準差向量;
                # YdataSTD = testing_amplitude;
                # # YdataSTD = Core.Array{Core.Float64, 1}();
                # # for i = 1:Base.length(Ydata)
                # #     if Base.typeof(Ydata[i]) <: Core.Array
                # #         if Core.Int64(Base.length(Ydata[i])) === Core.Int64(1)
                # #             ySTD = Core.Float64(Statistics.std(Ydata[i]; corrected=false));
                # #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                # #         elseif Core.Int64(Base.length(Ydata[i])) > Core.Int64(1)
                # #             ySTD = Core.Float64(Statistics.std(Ydata[i]; corrected=true));
                # #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                # #         end
                # #     else
                # #         ySTD = Core.Float64(0.0);
                # #         Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                # #     end
                # # end
                # 求 Ydata 變異係數（與重心比較的相對標準差）向量;
                YdataSTD = testing_amplitude_rate;
                # YdataSTD = Core.Array{Core.Float64, 1}();
                # for i = 1:Base.length(Ydata)
                #     if Base.typeof(Ydata[i]) <: Core.Array
                #         if Core.Int64(Base.length(Ydata[i])) === Core.Int64(1)
                #             ySTD = Core.Float64(Core.Float64(Statistics.std(Ydata[i]; corrected=false)) / Core.Float64(Statistics.mean(Ydata[i])));
                #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                #         elseif Core.Int64(Base.length(Ydata[i])) > Core.Int64(1)
                #             ySTD = Core.Float64(Core.Float64(Statistics.std(Ydata[i]; corrected=true)) / Core.Float64(Statistics.mean(Ydata[i])));
                #             Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                #         end
                #     else
                #         ySTD = Core.Float64(0.0);
                #         Base.push!(YdataSTD, ySTD);  # 使用 push! 函數在數組末尾追加推入新元素;
                #     end
                # end
                # println(YdataSTD);
                # 求 Xdata 均值向量;
                Xdata = [Core.UInt64(i) for i in 1:Base.length(YdataMean)];
                # Xdata = testing_date_transaction;
                # Xdata = value["date_transaction"];
                # println(Xdata);
            end

            # 擬合參數預設值（Parameter default）;
            if (Base.typeof(YdataMean) <: Core.Array && Base.length(YdataMean) > 0) && (Base.typeof(YdataSTD) <: Core.Array && Base.length(YdataSTD) > 0) && (Base.typeof(Xdata) <: Core.Array && Base.length(Xdata) > 0)

                # 擬合參數（Parameter）;
                # 參數初始值（Initialization）;
                Pdata_0_P1 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        Pdata_0_P1_I = Core.Float64(YdataMean[i] / Xdata[i]^3);
                    else
                        Pdata_0_P1_I = Core.Float64(YdataMean[i] - Xdata[i]^3);
                    end
                    Base.push!(Pdata_0_P1, Pdata_0_P1_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P1 = Core.Float64(Statistics.mean(Pdata_0_P1));
                # println(Pdata_0_P1);

                Pdata_0_P2 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        Pdata_0_P2_I = Core.Float64(YdataMean[i] / Xdata[i]^2);
                    else
                        Pdata_0_P2_I = Core.Float64(YdataMean[i] - Xdata[i]^2);
                    end
                    Base.push!(Pdata_0_P2, Pdata_0_P2_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P2 = Core.Float64(Statistics.mean(Pdata_0_P2));
                # println(Pdata_0_P2);

                Pdata_0_P3 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        Pdata_0_P3_I = Core.Float64(YdataMean[i] / Xdata[i]^1);
                    else
                        Pdata_0_P3_I = Core.Float64(YdataMean[i] - Xdata[i]^1);
                    end
                    Base.push!(Pdata_0_P3, Pdata_0_P3_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P3 = Core.Float64(Statistics.mean(Pdata_0_P3));
                # println(Pdata_0_P3);

                Pdata_0_P4 = Core.Array{Core.Float64, 1}();
                for i = 1:Base.length(YdataMean)
                    if Core.Float64(Xdata[i]) !== Core.Float64(0.0)
                        # 符號 / 表示常規除法，符號 % 表示除法取餘，等價於 Base.rem() 函數，符號 ÷ 表示除法取整，符號 * 表示乘法，符號 ^ 表示冪運算，符號 + 表示加法，符號 - 表示減法;
                        Pdata_0_P4_I_1 = Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Pdata_0_P3 * Xdata[i]^1)) * Core.Float64(Pdata_0_P3 * Xdata[i]^1));
                        Pdata_0_P4_I_2 = Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Pdata_0_P2 * Xdata[i]^2)) * Core.Float64(Pdata_0_P2 * Xdata[i]^2));
                        Pdata_0_P4_I_3 = Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Pdata_0_P1 * Xdata[i]^3)) * Core.Float64(Pdata_0_P1 * Xdata[i]^3));
                        Pdata_0_P4_I = Core.Float64(Pdata_0_P4_I_1 + Pdata_0_P4_I_2 + Pdata_0_P4_I_3);
                    else
                        Pdata_0_P4_I = Core.Float64(YdataMean[i] - Xdata[i]);
                    end
                    Base.push!(Pdata_0_P4, Pdata_0_P4_I);  # 使用 push! 函數在數組末尾追加推入新元素;
                end
                Pdata_0_P4 = Core.Float64(Statistics.mean(Pdata_0_P4));
                # println(Pdata_0_P4);

                # Pdata_0 = Core.Array{Core.Float64, 1}();
                # Pdata_0 = [
                #     Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^3) for i in 1:Base.length(YdataMean)])),
                #     Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^2) for i in 1:Base.length(YdataMean)])),
                #     Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^1) for i in 1:Base.length(YdataMean)])),
                #     Core.Float64(Statistics.mean([Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^1) for i in 1:Base.length(YdataMean)])) * Xdata[i]^1)) * Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^1) for i in 1:Base.length(YdataMean)])) * Xdata[i]^1)) for i in 1:Base.length(YdataMean)]) + Statistics.mean([Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^2) for i in 1:Base.length(YdataMean)])) * Xdata[i]^2)) * Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^2) for i in 1:Base.length(YdataMean)])) * Xdata[i]^2)) for i in 1:Base.length(YdataMean)]) + Statistics.mean([Core.Float64(Core.Float64(YdataMean[i] % Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^3) for i in 1:Base.length(YdataMean)])) * Xdata[i]^3)) * Core.Float64(Core.Float64(Statistics.mean([(YdataMean[i]/Xdata[i]^3) for i in 1:Base.length(YdataMean)])) * Xdata[i]^3)) for i in 1:Base.length(YdataMean)]))
                # ];
                if Core.Int64(Base.length(Pdata_0)) === Core.Int64(0)
                    Pdata_0 = [
                        Core.Int64(3),
                        Core.Float64(+0.1),
                        Core.Float64(-0.1),
                        Core.Float64(0.0)
                    ];
                    # Pdata_0 = [
                    #     Pdata_0_P1,
                    #     Pdata_0_P2,
                    #     Pdata_0_P3,
                    #     Pdata_0_P4
                    # ];
                end
                # println(Pdata_0);

                # # 參數值上下限;
                # # Plower = Core.Array{Core.Union{Core.Bool, Core.Float64, Core.Int64, Core.String}, 1}();
                # Plower = [
                #     -Base.Inf,  # P[1];
                #     -Base.Inf,  # P[2];
                #     -Base.Inf,  # P[3];
                #     -Base.Inf  # P[4];
                # ];
                # # println(Plower);
                # # Pupper = Core.Array{Core.Union{Core.Bool, Core.Float64, Core.Int64, Core.String}, 1}()
                # Pupper = [
                #     +Base.Inf,  # P[1];
                #     +Base.Inf,  # P[2];
                #     +Base.Inf,  # P[3];
                #     +Base.Inf  # P[4];
                # ];
                # # println(Pupper);

                # 變量實測值擬合權重;
                # # weight = Core.Array{Core.Float64, 1}();
                # # 使用高斯核賦權法;
                # target = 2;  # 擬合模型之後的目標預測點，比如，設定爲 3 表示擬合出模型參數值之後，想要使用此模型預測 Xdata 中第 3 個位置附近的點的 Yvals 的直;
                # af = Core.Float64(0.9);  # 衰減因子 attenuation factor ，即權重值衰減的速率，af 值愈小，權重值衰減的愈快;
                # for i = 1:Base.length(YdataMean)
                #     wei = Base.exp((YdataMean[i] / YdataMean[target] - 1)^2 / ((-2) * af^2));
                #     Base.push!(weight, wei);  # 使用 push! 函數在數組末尾追加推入新元素;
                # end
                # # # 使用方差倒數值賦權法;
                # # for i = 1:Base.length(YdataSTD)
                # #     wei = 1 / YdataSTD[i];  # Statistics.std(Ydata[i]), Statistics.var(Ydata[i]);
                # #     Base.push!(weight, wei);  # 使用 push! 函數在數組末尾追加推入新元素;
                # # end
                if Core.Int64(Base.length(weight)) === Core.Int64(0)
                    weight = [Core.Float64(1.0) for i in 1:Base.length(YdataMean)];
                    # weight = [Core.Float64(1.0 / YdataMean[i]) for i in 1:Base.length(YdataMean)];  # 每日成交價振幅倒數;
                    # weight = [Core.Float64(testing_turnover_rate[i]) for i in 1:Base.length(testing_turnover_rate)];  # 每日成交量（換手率）;
                    # weight = [Core.Float64(1.0 / y_C[i]) for i in 1:Base.length(y_C)];  # 每次交易間隔日長的倒數;
                end
                # println(weight);

                # testData[key]["Pdata_0"] = Pdata_0;
                # testData[key]["Plower"] = Plower;
                # testData[key]["Pupper"] = Pupper;
                # testData[key]["weight"] = weight;
                # # 釋放内存;
                # Pdata_0 = Core.nothing;
                # Plower = Core.nothing;
                # Pupper = Core.nothing;
                # weight = Core.nothing;
            end

            # 測試集數據預測（Test Estimate）;
            test_profit_estimate = Core.Float64(0.0);  # 預測收益;
            test_odds_ratio_estimate = Core.Float64(0.0);  # 預測概率;
            test_date_transaction_between = Core.Float64(0.0);  # 兩次交易間隔日長均值;
            # test_P1_Array = Core.Array{Core.Union{Core.String, Core.Float64, Core.Int64, Core.UInt64, Core.Nothing, Base.Missing}, 1}();  # 依照擇時規則計算得到參數 P1 值的序列，並保存入數組;
            test_result = Base.Dict{Core.String, Core.Any}();
            if Base.isa(value, Base.Dict) && Base.length(value) > 0
                # test_result = MarketTiming_f_fit_model(
                #     [
                #         Base.Dict{Core.String, Core.Any}(
                #             key => Base.Dict{Core.String, Core.Any}(
                #                 "date_transaction" => value["date_transaction"],
                #                 "turnover_volume" => value["turnover_volume"],
                #                 # "turnover_amount" => value["turnover_amount"],
                #                 "opening_price" => value["opening_price"],
                #                 "close_price" => value["close_price"],
                #                 "low_price" => value["low_price"],
                #                 "high_price" => value["high_price"],
                #                 "focus" => testing_focus,
                #                 "amplitude" => testing_amplitude,
                #                 "amplitude_rate" => testing_amplitude_rate,
                #                 "opening_price_Standardization" => testing_opening_price_Standardization,
                #                 "closing_price_Standardization" => testing_closing_price_Standardization,
                #                 "low_price_Standardization" => testing_low_price_Standardization,
                #                 "high_price_Standardization" => testing_high_price_Standardization,
                #                 "turnover_volume_growth_rate" => testing_turnover_volume_growth_rate,
                #                 "opening_price_growth_rate" => testing_opening_price_growth_rate,
                #                 "closing_price_growth_rate" => testing_closing_price_growth_rate,
                #                 "closing_minus_opening_price_growth_rate" => testing_closing_minus_opening_price_growth_rate,
                #                 "high_price_proportion" => testing_high_price_proportion,
                #                 "low_price_proportion" => testing_low_price_proportion
                #             )
                #         ),
                #         Quantitative_Indicators_Function,
                #         investment_method
                #     ],
                #     [
                #         resultDict[key]["Coefficient"][1],
                #         resultDict[key]["Coefficient"][2],
                #         resultDict[key]["Coefficient"][3],
                #         resultDict[key]["Coefficient"][4]
                #     ]
                # )[key];
                test_result = MarketTiming_fit_model(
                    Base.Dict{Core.String, Core.Any}(
                        key => Base.Dict{Core.String, Core.Any}(
                            "date_transaction" => value["date_transaction"],
                            "turnover_volume" => value["turnover_volume"],
                            # "turnover_amount" => value["turnover_amount"],
                            "opening_price" => value["opening_price"],
                            "close_price" => value["close_price"],
                            "low_price" => value["low_price"],
                            "high_price" => value["high_price"],
                            "focus" => testing_focus,
                            "amplitude" => testing_amplitude,
                            "amplitude_rate" => testing_amplitude_rate,
                            "opening_price_Standardization" => testing_opening_price_Standardization,
                            "closing_price_Standardization" => testing_closing_price_Standardization,
                            "low_price_Standardization" => testing_low_price_Standardization,
                            "high_price_Standardization" => testing_high_price_Standardization,
                            "turnover_volume_growth_rate" => testing_turnover_volume_growth_rate,
                            "opening_price_growth_rate" => testing_opening_price_growth_rate,
                            "closing_price_growth_rate" => testing_closing_price_growth_rate,
                            "closing_minus_opening_price_growth_rate" => testing_closing_minus_opening_price_growth_rate,
                            "high_price_proportion" => testing_high_price_proportion,
                            "low_price_proportion" => testing_low_price_proportion
                        )
                    ),
                    resultDict[key]["Coefficient"][1],
                    resultDict[key]["Coefficient"][2],
                    resultDict[key]["Coefficient"][3],
                    resultDict[key]["Coefficient"][4],
                    Quantitative_Indicators_Function,
                    investment_method
                )[key];
                # Base.Dict{Core.String, Core.Any}(
                #     "y_profit" => y_profit,  # 優化目標變量，每兩次對衝交易利潤 × 權重，加權纍加總計;
                #     "y_Long_Position_profit" => y_Long_Position_profit,  # 優化目標變量，做多（Long Position），每兩次對衝交易利潤 × 權重，加權纍加總計;
                #     "y_Short_Selling_profit" => y_Short_Selling_profit,  # 優化目標變量，做空（Short Selling），每兩次對衝交易利潤 × 權重，加權纍加總計;
                #     "y_loss" => y_loss,  # 優化目標變量，每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                #     "y_Long_Position_loss" => y_Long_Position_loss,  # 優化目標變量，做多（Long Position），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                #     "y_Short_Selling_loss" => y_Short_Selling_loss,  # 優化目標變量，做空（Short Selling），每兩次對衝交易最大回撤 × 權重，加權纍加總計;
                #     "profit_total" => y_total,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                #     "Long_Position_profit_total" => y_total_Long_Position,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                #     "Short_Selling_profit_total" => y_total_Short_Selling,  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                #     "profit_Positive" => y_Positive,  # 每兩次對衝交易收益纍加總計;
                #     "Long_Position_profit_Positive" => y_Positive_Long_Position,  # 每兩次對衝交易收益纍加總計;
                #     "Short_Selling_profit_Positive" => y_Positive_Short_Selling,  # 每兩次對衝交易收益纍加總計;
                #     "profit_Positive_probability" => y_P_Positive,  # 每兩次對衝交易正利潤概率;
                #     "Long_Position_profit_Positive_probability" => y_P_Positive_Long_Position,  # 每兩次對衝交易正利潤概率;
                #     "Short_Selling_profit_Positive_probability" => y_P_Positive_Short_Selling,  # 每兩次對衝交易正利潤概率;
                #     "profit_Negative" => y_Negative,  # 每兩次對衝交易損失纍加總計;
                #     "Long_Position_profit_Negative" => y_Negative_Long_Position,  # 每兩次對衝交易損失纍加總計;
                #     "Short_Selling_profit_Negative" => y_Negative_Short_Selling,  # 每兩次對衝交易損失纍加總計;
                #     "profit_Negative_probability" => y_P_Negative,  # 每兩次對衝交易負利潤概率;
                #     "Long_Position_profit_Negative_probability" => y_P_Negative_Long_Position,  # 每兩次對衝交易負利潤概率;
                #     "Short_Selling_profit_Negative_probability" => y_P_Negative_Short_Selling,  # 每兩次對衝交易負利潤概率;
                #     "Long_Position_profit_date_transaction" => y_A_Long_Position,  # 每兩次對衝交易利潤，向量;
                #     "Short_Selling_profit_date_transaction" => y_A_Short_Selling,  # 每兩次對衝交易利潤，向量;
                #     "maximum_drawdown" => y_maximum_drawdown,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                #     "maximum_drawdown_Long_Position" => y_maximum_drawdown_Long_Position,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                #     "maximum_drawdown_Short_Selling" => y_maximum_drawdown_Short_Selling,  # 兩次對衝交易之間的最大回撤值，取極值統計;
                #     "Long_Position_drawdown_date_transaction" => y_H_Long_Position,  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                #     "Short_Selling_drawdown_date_transaction" => y_H_Short_Selling,  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                #     "average_price_amplitude_date_transaction" => y_amplitude,  # 兩兩次對衝交易日成交價振幅平方和，均值;
                #     "Long_Position_average_price_amplitude_date_transaction" => y_amplitude_Long_Position,  # 兩兩次對衝交易日成交價振幅平方和，均值;
                #     "Short_Selling_average_price_amplitude_date_transaction" => y_amplitude_Short_Selling,  # 兩兩次對衝交易日成交價振幅平方和，均值;
                #     "Long_Position_price_amplitude_date_transaction" => y_D_Long_Position,  # 兩次對衝交易日成交價振幅平方和，向量;
                #     "Short_Selling_price_amplitude_date_transaction" => y_D_Short_Selling,  # 兩次對衝交易日成交價振幅平方和，向量;
                #     "average_volume_turnover_date_transaction" => y_turnover,  # 兩次對衝交易日成交量（換手率）均值;
                #     "Long_Position_average_volume_turnover_date_transaction" => y_turnover_Long_Position,  # 兩次對衝交易日成交量（換手率）均值;
                #     "Short_Selling_average_volume_turnover_date_transaction" => y_turnover_Short_Selling,  # 兩次對衝交易日成交量（換手率）均值;
                #     "Long_Position_volume_turnover_date_transaction" => y_E_Long_Position,  # 兩次對衝交易日成交量（換手率）向量;
                #     "Short_Selling_volume_turnover_date_transaction" => y_E_Short_Selling,  # 兩次對衝交易日成交量（換手率）向量;
                #     "average_date_transaction_between" => y_date_transaction_between,  # 兩次對衝交易間隔日長，均值;
                #     "Long_Position_average_date_transaction_between" => y_date_transaction_between_Long_Position,  # 兩次對衝交易間隔日長，均值;
                #     "Short_Selling_average_date_transaction_between" => y_date_transaction_between_Short_Selling,  # 兩次對衝交易間隔日長，均值;
                #     "Long_Position_date_transaction_between" => y_C_Long_Position,  # 兩次對衝交易間隔日長，向量;
                #     "Short_Selling_date_transaction_between" => y_C_Short_Selling,  # 兩次對衝交易間隔日長，向量;
                #     "Long_Position_date_transaction" => y_F_Long_Position,  # 按規則執行交易的日期，向量;
                #     "Short_Selling_date_transaction" => y_F_Short_Selling,  # 按規則執行交易的日期，向量;
                #     "P1_Array" => P1_Array,  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
                #     "revenue_and_expenditure_records_date_transaction" => y_G  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
                # );
                # println(test_result["y_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
                # println(test_result["y_Long_Position_profit"]);  # 優化目標變量;
                # println(test_result["y_Short_Selling_profit"]);  # 優化目標變量;
                # println(test_result["y_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
                # println(test_result["y_Long_Position_loss"]);  # 優化目標變量;
                # println(test_result["y_Short_Selling_loss"]);  # 優化目標變量;
                # println(test_result["profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # println(test_result["Long_Position_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # println(test_result["Short_Selling_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
                # println(test_result["profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
                # println(test_result["Long_Position_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
                # println(test_result["Short_Selling_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
                # println(test_result["profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
                # println(test_result["Long_Position_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
                # println(test_result["Short_Selling_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
                # println(test_result["profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
                # println(test_result["Long_Position_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
                # println(test_result["Short_Selling_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
                # println(test_result["profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
                # println(test_result["Long_Position_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
                # println(test_result["Short_Selling_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
                # println(test_result["Long_Position_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
                # println(test_result["Short_Selling_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
                # println("maximum_drawdown = ", test_result["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # println("maximum_drawdown_Long_Position = ", test_result["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # println("maximum_drawdown_Short_Selling = ", test_result["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
                # println("Long_Position_drawdown_date_transaction = ", test_result["Long_Position_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # println("Short_Selling_drawdown_date_transaction = ", test_result["Short_Selling_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
                # println(test_result["average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # println(test_result["Long_Position_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # println(test_result["Short_Selling_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
                # println(test_result["Long_Position_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
                # println(test_result["Short_Selling_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
                # println(test_result["average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
                # println(test_result["Long_Position_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
                # println(test_result["Short_Selling_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
                # println(test_result["Long_Position_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
                # println(test_result["Short_Selling_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
                # println(test_result["average_date_transaction_between"]);  # 兩次交易間隔日長，均值;
                # println(test_result["Long_Position_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
                # println(test_result["Short_Selling_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
                # println(test_result["Long_Position_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
                # println(test_result["Short_Selling_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
                # println(test_result["Long_Position_date_transaction"]);  # 按規則執行交易的日期，向量;
                # println(test_result["Long_Position_date_transaction"][1]);  # 交易規則自動選取的交易日期;
                # println(test_result["Long_Position_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
                # println(test_result["Long_Position_date_transaction"][3]);  # 交易規則自動選取的成交價;
                # println(test_result["Long_Position_date_transaction"][4]);  # 交易規則自動選取的成交量;
                # println(test_result["Long_Position_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
                # println(test_result["Long_Position_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
                # println(test_result["Long_Position_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
                # println(test_result["Long_Position_date_transaction"][8]);  # 當日總成交量（turnover volume）;
                # println(test_result["Long_Position_date_transaction"][9]);  # 當日開盤（opening）成交價;
                # println(test_result["Long_Position_date_transaction"][10]);  # 當日收盤（closing）成交價;
                # println(test_result["Long_Position_date_transaction"][11]);  # 當日最低（low）成交價;
                # println(test_result["Long_Position_date_transaction"][12]);  # 當日最高（high）成交價;
                # println(test_result["Long_Position_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
                # println(test_result["Long_Position_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
                # println(test_result["Long_Position_date_transaction"][15]);  # 當日每股收益（price earnings）;
                # println(test_result["Long_Position_date_transaction"][16]);  # 當日每股净值（book value per share）;
                # println(test_result["Short_Selling_date_transaction"]);  # 按規則執行交易的日期，向量;
                # println(test_result["Short_Selling_date_transaction"][1]);  # 交易規則自動選取的交易日期;
                # println(test_result["Short_Selling_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
                # println(test_result["Short_Selling_date_transaction"][3]);  # 交易規則自動選取的成交價;
                # println(test_result["Short_Selling_date_transaction"][4]);  # 交易規則自動選取的成交量;
                # println(test_result["Short_Selling_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
                # println(test_result["Short_Selling_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
                # println(test_result["Short_Selling_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
                # println(test_result["Short_Selling_date_transaction"][8]);  # 當日總成交量（turnover volume）;
                # println(test_result["Short_Selling_date_transaction"][9]);  # 當日開盤（opening）成交價;
                # println(test_result["Short_Selling_date_transaction"][10]);  # 當日收盤（closing）成交價;
                # println(test_result["Short_Selling_date_transaction"][11]);  # 當日最低（low）成交價;
                # println(test_result["Short_Selling_date_transaction"][12]);  # 當日最高（high）成交價;
                # println(test_result["Short_Selling_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
                # println(test_result["Short_Selling_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
                # println(test_result["Short_Selling_date_transaction"][15]);  # 當日每股收益（price earnings）;
                # println(test_result["Short_Selling_date_transaction"][16]);  # 當日每股净值（book value per share）;
                # println(test_result["revenue_and_expenditure_records_date_transaction"]);  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
                # println(test_result["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;

                test_profit_estimate = Core.nothing;  # Core.Float64(test_result["profit_total"]);
                if !(Base.ismissing(test_result["profit_total"]) || Base.isnothing(test_result["profit_total"]))
                    test_profit_estimate = Core.Float64(test_result["profit_total"]);
                end
                test_odds_ratio_estimate = Core.nothing;  # Core.Float64(test_result["profit_Positive_probability"] / test_result["profit_Negative_probability"]);
                if (!(Base.ismissing(test_result["profit_Positive_probability"]) || Base.isnothing(test_result["profit_Positive_probability"]))) && (!(Base.ismissing(test_result["profit_Negative_probability"]) || Base.isnothing(test_result["profit_Negative_probability"])))
                    if test_result["profit_Negative_probability"] != 0
                        test_odds_ratio_estimate = Core.Float64(test_result["profit_Positive_probability"] / test_result["profit_Negative_probability"]);
                    end
                end
                test_date_transaction_between = Core.nothing;  # Core.Float64(test_result["average_date_transaction_between"]);
                if !(Base.ismissing(test_result["average_date_transaction_between"]) || Base.isnothing(test_result["average_date_transaction_between"]))
                    test_date_transaction_between = Core.Float64(test_result["average_date_transaction_between"]);
                end
                # test_P1_Array = test_result["P1_Array"];  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
            end

            # resultDict_ticker_symbol = Base.Dict{Core.String, Core.Any}();
            # resultDict_ticker_symbol["test_profit"] = test_profit_estimate;
            # resultDict_ticker_symbol["test_odds_ratio"] = test_odds_ratio_estimate;
            # resultDict_ticker_symbol["test_date_transaction_between"] = test_date_transaction_between;
            # # resultDict_ticker_symbol["Coefficient"] = coefficient_from_fit;  # 擬合得到的參數解;
            # # resultDict_ticker_symbol["Coefficient-StandardDeviation"] = margin_of_error;  # 擬合得到的參數解的標準差;
            # # resultDict_ticker_symbol["Coefficient-Confidence-Lower-95%"] = [confidence_inter[1][1], confidence_inter[2][1]];  # 擬合得到的參數解的區間估計下限;
            # # resultDict_ticker_symbol["Coefficient-Confidence-Upper-95%"] = [confidence_inter[1][2], confidence_inter[2][2]];  # 擬合得到的參數解的區間估計上限;
            # # resultDict_ticker_symbol["Yfit"] = Yvals;  # 擬合 y 值;
            # # resultDict_ticker_symbol["Yfit-Uncertainty-Lower"] = YvalsUncertaintyLower;  # 擬合的應變量 Yvals 誤差下限;
            # # resultDict_ticker_symbol["Yfit-Uncertainty-Upper"] = YvalsUncertaintyUpper;  # 擬合的應變量 Yvals 誤差上限;
            # # resultDict_ticker_symbol["Residual"] = Residual;  # 擬合殘差;
            # # resultDict_ticker_symbol["P1_Array"] = training_result["P1_Array"];  # P1_Array;  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
            # # resultDict_ticker_symbol["y_profit"] = training_result["y_profit"];  # 最優化目標值，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
            # # resultDict_ticker_symbol["y_Long_Position_profit"] = training_result["y_Long_Position_profit"];  # 最優化目標值，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
            # # resultDict_ticker_symbol["y_Short_Selling_profit"] = training_result["y_Short_Selling_profit"];  # 最優化目標值，每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
            # # resultDict_ticker_symbol["y_loss"] = training_result["y_loss"];  # 最優化目標值，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
            # # resultDict_ticker_symbol["y_Long_Position_loss"] = training_result["y_Long_Position_loss"];  # 最優化目標值，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
            # # resultDict_ticker_symbol["y_Short_Selling_loss"] = training_result["y_Short_Selling_loss"];  # 最優化目標值，每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
            # # resultDict_ticker_symbol["profit_total"] = training_result["profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
            # # resultDict_ticker_symbol["Long_Position_profit_total"] = training_result["Long_Position_profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
            # # resultDict_ticker_symbol["Short_Selling_profit_total"] = training_result["Short_Selling_profit_total"];  # 每兩次對衝交易利潤 × 頻率，纍加總計;
            # # resultDict_ticker_symbol["profit_Positive"] = training_result["profit_Positive"];  # 每兩次對衝交易收益纍加總計;
            # # resultDict_ticker_symbol["Long_Position_profit_Positive"] = training_result["Long_Position_profit_Positive"];  # 每兩次對衝交易收益纍加總計;
            # # resultDict_ticker_symbol["Short_Selling_profit_Positive"] = training_result["Short_Selling_profit_Positive"];  # 每兩次對衝交易收益纍加總計;
            # # resultDict_ticker_symbol["profit_Positive_probability"] = training_result["profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
            # # resultDict_ticker_symbol["Long_Position_profit_Positive_probability"] = training_result["Long_Position_profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
            # # resultDict_ticker_symbol["Short_Selling_profit_Positive_probability"] = training_result["Short_Selling_profit_Positive_probability"];  # 每兩次對衝交易正利潤概率;
            # # resultDict_ticker_symbol["profit_Negative"] = training_result["profit_Negative"];  # 每兩次對衝交易損失纍加總計;
            # # resultDict_ticker_symbol["Long_Position_profit_Negative"] = training_result["Long_Position_profit_Negative"];  # 每兩次對衝交易損失纍加總計;
            # # resultDict_ticker_symbol["Short_Selling_profit_Negative"] = training_result["Short_Selling_profit_Negative"];  # 每兩次對衝交易損失纍加總計;
            # # resultDict_ticker_symbol["profit_Negative_probability"] = training_result["profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
            # # resultDict_ticker_symbol["Long_Position_profit_Negative_probability"] = training_result["Long_Position_profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
            # # resultDict_ticker_symbol["Short_Selling_profit_Negative_probability"] = training_result["Short_Selling_profit_Negative_probability"];  # 每兩次對衝交易負利潤概率;
            # # resultDict_ticker_symbol["Long_Position_profit_date_transaction"] = training_result["Long_Position_profit_date_transaction"];  # 每兩次對衝交易利潤，向量;
            # # resultDict_ticker_symbol["Short_Selling_profit_date_transaction"] = training_result["Short_Selling_profit_date_transaction"];  # 每兩次對衝交易利潤，向量;
            # # resultDict_ticker_symbol["maximum_drawdown"] = training_result["maximum_drawdown"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            # # resultDict_ticker_symbol["maximum_drawdown_Long_Position"] = training_result["maximum_drawdown_Long_Position"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            # # resultDict_ticker_symbol["maximum_drawdown_Short_Selling"] = training_result["maximum_drawdown_Short_Selling"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            # # resultDict_ticker_symbol["Long_Position_drawdown_date_transaction"] = training_result["Long_Position_drawdown_date_transaction"];  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
            # # resultDict_ticker_symbol["Short_Selling_drawdown_date_transaction"] = training_result["Short_Selling_drawdown_date_transaction"];  # 向量，記錄做空模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
            # # resultDict_ticker_symbol["average_price_amplitude_date_transaction"] = training_result["average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
            # # resultDict_ticker_symbol["Long_Position_average_price_amplitude_date_transaction"] = training_result["Long_Position_average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
            # # resultDict_ticker_symbol["Short_Selling_average_price_amplitude_date_transaction"] = training_result["Short_Selling_average_price_amplitude_date_transaction"];  # 兩兩次對衝交易日成交價振幅平方和，均值;
            # # resultDict_ticker_symbol["Long_Position_price_amplitude_date_transaction"] = training_result["Long_Position_price_amplitude_date_transaction"];  # 兩次對衝交易日成交價振幅平方和，向量;
            # # resultDict_ticker_symbol["Short_Selling_price_amplitude_date_transaction"] = training_result["Short_Selling_price_amplitude_date_transaction"];  # 兩次對衝交易日成交價振幅平方和，向量;
            # # resultDict_ticker_symbol["average_volume_turnover_date_transaction"] = training_result["average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
            # # resultDict_ticker_symbol["Long_Position_average_volume_turnover_date_transaction"] = training_result["Long_Position_average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
            # # resultDict_ticker_symbol["Short_Selling_average_volume_turnover_date_transaction"] = training_result["Short_Selling_average_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）均值;
            # # resultDict_ticker_symbol["Long_Position_volume_turnover_date_transaction"] = training_result["Long_Position_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）向量;
            # # resultDict_ticker_symbol["Short_Selling_volume_turnover_date_transaction"] = training_result["Short_Selling_volume_turnover_date_transaction"];  # 兩次對衝交易日成交量（換手率）向量;
            # # resultDict_ticker_symbol["average_date_transaction_between"] = training_result["average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
            # # resultDict_ticker_symbol["Long_Position_average_date_transaction_between"] = training_result["Long_Position_average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
            # # resultDict_ticker_symbol["Short_Selling_average_date_transaction_between"] = training_result["Short_Selling_average_date_transaction_between"];  # 兩次對衝交易間隔日長，均值;
            # # resultDict_ticker_symbol["Long_Position_date_transaction_between"] = training_result["Long_Position_date_transaction_between"];  # 兩次對衝交易間隔日長，向量;
            # # resultDict_ticker_symbol["Short_Selling_date_transaction_between"] = training_result["Short_Selling_date_transaction_between"];  # 兩次對衝交易間隔日長，向量;
            # # resultDict_ticker_symbol["Long_Position_date_transaction"] = training_result["Long_Position_date_transaction"];  # 按規則執行交易的日期，向量;
            # # resultDict_ticker_symbol["Short_Selling_date_transaction"] = training_result["Short_Selling_date_transaction"];  # 按規則執行交易的日期，向量;
            # # resultDict_ticker_symbol["revenue_and_expenditure_records_date_transaction"] = training_result["revenue_and_expenditure_records_date_transaction"];  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
            # resultDict_ticker_symbol["testData"] = test_result;  # 傳入測試數據集的計算結果;
            # # resultDict_ticker_symbol["Curve-fit-image"] = img1;  # 擬合曲綫繪圖;
            # # resultDict_ticker_symbol["Residual-image"] = img2;  # 擬合殘差繪圖;

            # # resultDict = Base.Dict{Core.String, Core.Any}();
            # resultDict[key] = resultDict_ticker_symbol;
            # resultDict_ticker_symbol = Core.nothing;  # 釋放内存;

            resultDict[key]["test_profit"] = test_profit_estimate;
            resultDict[key]["test_maximum_drawdown"] = test_result["maximum_drawdown"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            resultDict[key]["test_maximum_drawdown_Long_Position"] = test_result["maximum_drawdown_Long_Position"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            resultDict[key]["test_maximum_drawdown_Short_Selling"] = test_result["maximum_drawdown_Short_Selling"];  # 兩次對衝交易之間的最大回撤值，取極值統計;
            resultDict[key]["test_odds_ratio"] = test_odds_ratio_estimate;
            resultDict[key]["test_date_transaction_between"] = test_date_transaction_between;
            resultDict[key]["testData"] = test_result;  # 傳入測試數據集的計算結果;
        end
    end

    # http://gadflyjl.org/stable/gallery/geometries/#[Geom.segment](@ref)
    # 繪圖;
    img1 = Core.nothing;
    img2 = Core.nothing;
    if false

        ticker_symbol::Core.String = Base.string("002611");  # 流通代碼;

        set_default_plot_size(21cm, 21cm);  # 設定畫布規格;

        # 繪製訓練集折缐圖示;
        # img1 = Core.nothing;
        if Base.isa(trainingData, Base.Dict) && Base.length(trainingData) > 0

            trainingData_index = trainingData[ticker_symbol];
            training_result = resultDict[ticker_symbol];

            points1 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                y = trainingData_index["focus"],  # YdataMean,  # Ydata,
                Geom.point,
                color = [colorant"black"],  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                Theme(
                    line_width = 1pt,
                    point_size = 2pt,
                    point_shapes = [Gadfly.Shape.hline],  # Gadfly.Shape.circle, Gadfly.Shape.square, Gadfly.Shape.diamond, Gadfly.Shape.cross, Gadfly.Shape.xcross, Gadfly.Shape.utriangle, Gadfly.Shape.dtriangle, Gadfly.Shape.star1, Gadfly.Shape.star2, Gadfly.Shape.hexagon, Gadfly.Shape.octagon, Gadfly.Shape.hline, Gadfly.Shape.vline, Gadfly.Shape.ltriangle, Gadfly.Shape.rtriangle
                )
            );
            smoothline1 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                y = trainingData_index["focus"],  # YdataMean,  # Yvals,
                # ymin = trainingData_index["low_price"],  # YvalsUncertaintyLower,  # 繪製置信區間填充圖下綫;
                # ymax = trainingData_index["high_price"],  # YvalsUncertaintyUpper,  # 繪製置信區間填充圖上綫;
                Geom.line,  # Geom.smooth,
                # Geom.ribbon(fill=true),  # 繪製置信區間填充圖;
                Theme(
                    # point_size = 5pt,
                    line_width = 1.0pt,
                    line_style = [:solid],  # :dot
                    default_color = "black",  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                    alphas = [1],
                    # lowlight_color = c->"gray"
                )  # color = [colorant"red"],
            );
            smoothline2 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                y = trainingData_index["low_price"],  # YvalsUncertaintyLower,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"yellow"],  # "brown", "purple"
            );
            smoothline3 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                y = trainingData_index["high_price"],  # YvalsUncertaintyUpper,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"yellow"],  # "brown", "purple"
            );
            # 繪製置信區間填充圖;
            ribbonline1 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                # y = trainingData_index["focus"],  # YdataMean,  # Yvals,
                ymin = trainingData_index["low_price"],  # YvalsUncertaintyLower,
                ymax = trainingData_index["high_price"],  # YvalsUncertaintyUpper,
                # Geom.line,  # Geom.smooth,
                Geom.ribbon(fill = true),
                Theme(
                    # point_size = 5pt,
                    line_width = 0.1pt,
                    line_style = [:dot],  # :solid
                    default_color = "gray",  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                    alphas = [0.5],
                    # lowlight_color = c->"gray"
                )  # color = [colorant"red"],
            );
            smoothline4 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                y = trainingData_index["opening_price"],  # YvalsUncertaintyLower,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"red"],
            );
            smoothline5 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                y = trainingData_index["close_price"],  # YvalsUncertaintyUpper,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"green"],
            );
            # 繪製置信區間填充圖;
            ribbonline2 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
                # y = trainingData_index["focus"],  # YdataMean,  # Yvals,
                ymin = [Core.Float64(Base.findmin([Core.Float64(trainingData_index["opening_price"][i]), Core.Float64(trainingData_index["close_price"][i])])[1]) for i in 1:Base.length(trainingData_index["focus"])],  # trainingData_index["opening_price"],  # YvalsUncertaintyLower,
                ymax = [Core.Float64(Base.findmax([Core.Float64(trainingData_index["opening_price"][i]), Core.Float64(trainingData_index["close_price"][i])])[1]) for i in 1:Base.length(trainingData_index["focus"])],  # trainingData_index["close_price"],  # YvalsUncertaintyUpper,
                # Geom.line,  # Geom.smooth,
                Geom.ribbon(fill = true),
                Theme(
                    # point_size = 5pt,
                    line_width = 0.1pt,
                    line_style = [:dot],  # :solid
                    default_color = "gray",  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                    alphas = [0.5],
                    # lowlight_color = c->"gray"
                )  # color = [colorant"red"],
            );
            buy_x = Core.Array{Core.Int64, 1}();
            # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Int64(training_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [(Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")) ? Core.Int64(training_result["Long_Position_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy") Core.Int64(training_result["Short_Selling_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            # [(Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")) ? Core.Int64(training_result["Short_Selling_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            buy_y = Core.Array{Core.Float64, 1}();
            # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Float64(training_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [(Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")) ? Core.Float64(training_result["Long_Position_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy") Core.Float64(training_result["Short_Selling_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            # [(Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")) ? Core.Float64(training_result["Short_Selling_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            buy_label = Core.Array{Core.String, 1}();
            # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [(Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")) ? Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy") Base.string(Base.string(training_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(training_result["Short_Selling_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            # [(Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")) ? Base.string(Base.string(training_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(training_result["Short_Selling_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            for i in 1:Base.length(training_result["Long_Position_date_transaction"])
                if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")
                    # Base.push!(buy_x, training_result["Long_Position_date_transaction"][i][1]);
                    Base.push!(buy_x, Core.Int64(training_result["Long_Position_date_transaction"][i][6]));
                    Base.push!(buy_y, Core.Float64(training_result["Long_Position_date_transaction"][i][3]));
                    Base.push!(buy_label, Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])));
                end
            end
            # for i in 1:Base.length(training_result["Short_Selling_date_transaction"])
            #     if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")
            #         # Base.push!(buy_x, training_result["Short_Selling_date_transaction"][i][1]);
            #         Base.push!(buy_x, Core.Int64(training_result["Short_Selling_date_transaction"][i][6]));
            #         Base.push!(buy_y, Core.Float64(training_result["Short_Selling_date_transaction"][i][3]));
            #         Base.push!(buy_label, Base.string(Base.string(training_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(training_result["Short_Selling_date_transaction"][i][5])));
            #     end
            # end
            points2 = Gadfly.layer(
                x = buy_x,  # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Int64(training_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])],  # [Core.Int64(i) for i in 1:Base.length(trainingData_index["Long_Position_date_transaction"])],  # trainingData_index["Long_Position_date_transaction"],  # Xdata,
                y = buy_y,  # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Float64(training_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])],  # trainingData_index["focus"],  # YdataMean,  # Ydata,
                Geom.point,
                label = buy_label,  # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])],
                Geom.label(
                    position = :above,  # :left, :right, :above, :below, :centered, or :dynamic
                    hide_overlaps = true
                ),
                color = [colorant"red"],  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                Theme(
                    line_width = 1pt,
                    point_size = 3pt,
                    point_shapes = [Gadfly.Shape.vline],  # Gadfly.Shape.circle, Gadfly.Shape.square, Gadfly.Shape.diamond, Gadfly.Shape.cross, Gadfly.Shape.xcross, Gadfly.Shape.utriangle, Gadfly.Shape.dtriangle, Gadfly.Shape.star1, Gadfly.Shape.star2, Gadfly.Shape.hexagon, Gadfly.Shape.octagon, Gadfly.Shape.hline, Gadfly.Shape.vline, Gadfly.Shape.ltriangle, Gadfly.Shape.rtriangle
                )
            );
            sell_x = Core.Array{Core.Int64, 1}();
            # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Int64(training_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [(Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")) ? Core.Int64(training_result["Long_Position_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell") Core.Int64(training_result["Short_Selling_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            # [(Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")) ? Core.Int64(training_result["Short_Selling_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            sell_y = Core.Array{Core.Float64, 1}();
            # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Float64(training_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [(Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")) ? Core.Float64(training_result["Long_Position_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell") Core.Float64(training_result["Short_Selling_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            # [(Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")) ? Core.Float64(training_result["Short_Selling_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            sell_label = Core.Array{Core.String, 1}();
            # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [(Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")) ? Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(training_result["Long_Position_date_transaction"])];
            # [if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell") Base.string(Base.string(training_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(training_result["Short_Selling_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            # [(Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")) ? Base.string(Base.string(training_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(training_result["Short_Selling_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(training_result["Short_Selling_date_transaction"])];
            for i in 1:Base.length(training_result["Long_Position_date_transaction"])
                if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")
                    # Base.push!(sell_x, training_result["Long_Position_date_transaction"][i][1]);
                    Base.push!(sell_x, Core.Int64(training_result["Long_Position_date_transaction"][i][6]));
                    Base.push!(sell_y, Core.Float64(training_result["Long_Position_date_transaction"][i][3]));
                    Base.push!(sell_label, Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])));
                end
            end
            # for i in 1:Base.length(training_result["Short_Selling_date_transaction"])
            #     if Base.string(training_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")
            #         # Base.push!(sell_x, training_result["Short_Selling_date_transaction"][i][1]);
            #         Base.push!(sell_x, Core.Int64(training_result["Short_Selling_date_transaction"][i][6]));
            #         Base.push!(sell_y, Core.Float64(training_result["Short_Selling_date_transaction"][i][3]));
            #         Base.push!(sell_label, Base.string(Base.string(training_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(training_result["Short_Selling_date_transaction"][i][5])));
            #     end
            # end
            points3 = Gadfly.layer(
                x = sell_x,  # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Int64(training_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])],  # [Core.Int64(i) for i in 1:Base.length(trainingData_index["Long_Position_date_transaction"])],  # trainingData_index["Long_Position_date_transaction"],  # Xdata,
                y = sell_y,  # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Float64(training_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])],  # trainingData_index["focus"],  # YdataMean,  # Ydata,
                Geom.point,
                label = sell_label,  # [if Base.string(training_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Base.string(Base.string(training_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(training_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(training_result["Long_Position_date_transaction"])],
                Geom.label(
                    position = :above,  # :left, :right, :above, :below, :centered, or :dynamic
                    hide_overlaps = true
                ),
                color = [colorant"green"],  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                Theme(
                    line_width = 1pt,
                    point_size = 3pt,
                    point_shapes = [Gadfly.Shape.vline],  # Gadfly.Shape.circle, Gadfly.Shape.square, Gadfly.Shape.diamond, Gadfly.Shape.cross, Gadfly.Shape.xcross, Gadfly.Shape.utriangle, Gadfly.Shape.dtriangle, Gadfly.Shape.star1, Gadfly.Shape.star2, Gadfly.Shape.hexagon, Gadfly.Shape.octagon, Gadfly.Shape.hline, Gadfly.Shape.vline, Gadfly.Shape.ltriangle, Gadfly.Shape.rtriangle
                )
            );
            img1 = Gadfly.plot(
                points1,
                # smoothline1,
                smoothline2,
                smoothline3,
                # ribbonline1,
                # smoothline4,
                # smoothline5,
                ribbonline2,
                points2,
                points3,
                # Guide.xlabel("Independent Variable ( x )"),
                Guide.xlabel("transaction date"),
                # Guide.ylabel("Dependent Variable ( y )"),
                Guide.ylabel("transaction price"),
                # Guide.manual_discrete_key("", ["observation values", "polyfit values"]; color=["blue", "red"]),
                Guide.xticks(
                    # ticks = [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # 設置 X 軸刻度值;
                    # ticks = [Base.string(Dates.format(trainingData_index["date_transaction"][i], "yyyy-mm-dd")) for i in 1:Base.length(trainingData_index["date_transaction"])],  # 設置 X 軸刻度標簽的文本;
                    # orientation = :vertical,  # 刻度標簽文本旋轉九十度垂直顯示;
                    label = false
                ),
                # Guide.yticks(
                #     ticks = [Core.Int64(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(trainingData_index["low_price"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(trainingData_index["high_price"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度值;
                #     ticks = [Base.string(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(trainingData_index["low_price"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(trainingData_index["high_price"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度標簽的文本;
                #     # ticks = [Core.Int64(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(trainingData_index["focus"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(trainingData_index["focus"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度值;
                #     # ticks = [Base.string(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(trainingData_index["focus"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(trainingData_index["focus"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度標簽的文本;
                #     orientation = :horizontal,  # 刻度標簽文本水平顯示;
                #     label = true
                # ),
                Guide.title("market timing model ( training )")
            );

            # img1 = Gadfly.plot(
            #     x = trainingData_index["date_transaction"],  # [Base.string(Dates.format(trainingData_index["date_transaction"][i], "yyyy-mm-dd")) for i in 1:Base.length(trainingData_index["date_transaction"])],  # [Core.Int64(i) for i in 1:Base.length(trainingData_index["date_transaction"])],  # trainingData_index["date_transaction"],  # Xdata,
            #     open = trainingData_index["opening_price"],
            #     high = trainingData_index["high_price"],
            #     low = trainingData_index["low_price"],
            #     close = trainingData_index["close_price"],
            #     Geom.candlestick,
            #     Scale.color_discrete_manual("green", "red"),
            #     Scale.x_discrete,
            #     Guide.title("market timing model ( training )"),
            #     # points2,
            #     # points3,
            #     # Guide.manual_discrete_key("Strategy Trading", ["buy", "sell"]; ["blue", "blue"]),
            #     # Guide.manual_discrete_key(title="Strategy Trading", labels=["buy", "sell"]; pos=[], color=["blue", "blue"], shape=[], size=[]),
            # );
            # Gadfly.draw(
            #     Gadfly.SVG(
            #         "./Curvefit.svg",
            #         21cm,
            #         21cm
            #     ),  # 保存爲 .svg 格式圖片;
            #     # Gadfly.PDF(
            #     #     "Curvefit.pdf",
            #     #     21cm,
            #     #     21cm
            #     # ),  # 保存爲 .pdf 格式圖片;
            #     # Gadfly.PNG(
            #     #     "Curvefit.png",
            #     #     21cm,
            #     #     21cm
            #     # ),  # 保存爲 .png 格式圖片;
            #     img1
            # );
        end

        # 繪製測試集折缐圖示;
        # img2 = Core.nothing;
        if Base.isa(testData, Base.Dict) && Base.length(testData) > 0

            testData_index = testData[ticker_symbol];
            test_result = resultDict[ticker_symbol]["testData"];

            points1 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                y = testData_index["focus"],  # YdataMean,  # Ydata,
                Geom.point,
                color = [colorant"black"],  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                Theme(
                    line_width = 1pt,
                    point_size = 2pt,
                    point_shapes = [Gadfly.Shape.hline],  # Gadfly.Shape.circle, Gadfly.Shape.square, Gadfly.Shape.diamond, Gadfly.Shape.cross, Gadfly.Shape.xcross, Gadfly.Shape.utriangle, Gadfly.Shape.dtriangle, Gadfly.Shape.star1, Gadfly.Shape.star2, Gadfly.Shape.hexagon, Gadfly.Shape.octagon, Gadfly.Shape.hline, Gadfly.Shape.vline, Gadfly.Shape.ltriangle, Gadfly.Shape.rtriangle
                )
            );
            smoothline1 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                y = testData_index["focus"],  # YdataMean,  # Yvals,
                # ymin = testData_index["low_price"],  # YvalsUncertaintyLower,  # 繪製置信區間填充圖下綫;
                # ymax = testData_index["high_price"],  # YvalsUncertaintyUpper,  # 繪製置信區間填充圖上綫;
                Geom.line,  # Geom.smooth,
                # Geom.ribbon(fill=true),  # 繪製置信區間填充圖;
                Theme(
                    # point_size = 5pt,
                    line_width = 1.0pt,
                    line_style = [:solid],  # :dot
                    default_color = "black",  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                    alphas = [1],
                    # lowlight_color = c->"gray"
                )  # color = [colorant"red"],
            );
            smoothline2 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                y = testData_index["low_price"],  # YvalsUncertaintyLower,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"yellow"],  # "brown", "purple"
            );
            smoothline3 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                y = testData_index["high_price"],  # YvalsUncertaintyUpper,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"yellow"],  # "brown", "purple"
            );
            # 繪製置信區間填充圖;
            ribbonline1 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                # y = testData_index["focus"],  # YdataMean,  # Yvals,
                ymin = testData_index["low_price"],  # YvalsUncertaintyLower,
                ymax = testData_index["high_price"],  # YvalsUncertaintyUpper,
                # Geom.line,  # Geom.smooth,
                Geom.ribbon(fill = true),
                Theme(
                    # point_size = 5pt,
                    line_width = 0.1pt,
                    line_style = [:dot],  # :solid
                    default_color = "gray",  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                    alphas = [0.5],
                    # lowlight_color = c->"gray"
                )  # color = [colorant"red"],
            );
            smoothline4 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                y = testData_index["opening_price"],  # YvalsUncertaintyLower,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"red"],
            );
            smoothline5 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                y = testData_index["close_price"],  # YvalsUncertaintyUpper,
                Geom.line,  # Geom.smooth,
                Theme(line_width=0.5pt, line_style=[:dot], default_color="black", alphas=[0.3],)  # color=[colorant"green"],
            );
            # 繪製置信區間填充圖;
            ribbonline2 = Gadfly.layer(
                x = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
                # y = testData_index["focus"],  # YdataMean,  # Yvals,
                ymin = [Core.Float64(Base.findmin([Core.Float64(testData_index["opening_price"][i]), Core.Float64(testData_index["close_price"][i])])[1]) for i in 1:Base.length(testData_index["focus"])],  # testData_index["opening_price"],  # YvalsUncertaintyLower,
                ymax = [Core.Float64(Base.findmax([Core.Float64(testData_index["opening_price"][i]), Core.Float64(testData_index["close_price"][i])])[1]) for i in 1:Base.length(testData_index["focus"])],  # testData_index["close_price"],  # YvalsUncertaintyUpper,
                # Geom.line,  # Geom.smooth,
                Geom.ribbon(fill = true),
                Theme(
                    # point_size = 5pt,
                    line_width = 0.1pt,
                    line_style = [:dot],  # :solid
                    default_color = "gray",  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                    alphas = [0.5],
                    # lowlight_color = c->"gray"
                )  # color = [colorant"red"],
            );
            buy_x = Core.Array{Core.Int64, 1}();
            # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Int64(test_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [(Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")) ? Core.Int64(test_result["Long_Position_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy") Core.Int64(test_result["Short_Selling_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            # [(Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")) ? Core.Int64(test_result["Short_Selling_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            buy_y = Core.Array{Core.Float64, 1}();
            # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Float64(test_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [(Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")) ? Core.Float64(test_result["Long_Position_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy") Core.Float64(test_result["Short_Selling_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            # [(Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")) ? Core.Float64(test_result["Short_Selling_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            buy_label = Core.Array{Core.String, 1}();
            # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [(Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")) ? Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy") Base.string(Base.string(test_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(test_result["Short_Selling_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            # [(Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")) ? Base.string(Base.string(test_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(test_result["Short_Selling_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            for i in 1:Base.length(test_result["Long_Position_date_transaction"])
                if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy")
                    # Base.push!(buy_x, test_result["Long_Position_date_transaction"][i][1]);
                    Base.push!(buy_x, Core.Int64(test_result["Long_Position_date_transaction"][i][6]));
                    Base.push!(buy_y, Core.Float64(test_result["Long_Position_date_transaction"][i][3]));
                    Base.push!(buy_label, Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])));
                end
            end
            # for i in 1:Base.length(test_result["Short_Selling_date_transaction"])
            #     if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("buy")
            #         # Base.push!(buy_x, test_result["Short_Selling_date_transaction"][i][1]);
            #         Base.push!(buy_x, Core.Int64(test_result["Short_Selling_date_transaction"][i][6]));
            #         Base.push!(buy_y, Core.Float64(test_result["Short_Selling_date_transaction"][i][3]));
            #         Base.push!(buy_label, Base.string(Base.string(test_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(test_result["Short_Selling_date_transaction"][i][5])));
            #     end
            # end
            points2 = Gadfly.layer(
                x = buy_x,  # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Int64(test_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])],  # [Core.Int64(i) for i in 1:Base.length(testData_index["Long_Position_date_transaction"])],  # testData_index["Long_Position_date_transaction"],  # Xdata,
                y = buy_y,  # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Core.Float64(test_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])],  # testData_index["focus"],  # YdataMean,  # Ydata,
                Geom.point,
                label = buy_label,  # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("buy") Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])],
                Geom.label(
                    position = :above,  # :left, :right, :above, :below, :centered, or :dynamic
                    hide_overlaps = true
                ),
                color = [colorant"red"],  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                Theme(
                    line_width = 1pt,
                    point_size = 3pt,
                    point_shapes = [Gadfly.Shape.vline],  # Gadfly.Shape.circle, Gadfly.Shape.square, Gadfly.Shape.diamond, Gadfly.Shape.cross, Gadfly.Shape.xcross, Gadfly.Shape.utriangle, Gadfly.Shape.dtriangle, Gadfly.Shape.star1, Gadfly.Shape.star2, Gadfly.Shape.hexagon, Gadfly.Shape.octagon, Gadfly.Shape.hline, Gadfly.Shape.vline, Gadfly.Shape.ltriangle, Gadfly.Shape.rtriangle
                )
            );
            sell_x = Core.Array{Core.Int64, 1}();
            # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Int64(test_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [(Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")) ? Core.Int64(test_result["Long_Position_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell") Core.Int64(test_result["Short_Selling_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            # [(Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")) ? Core.Int64(test_result["Short_Selling_date_transaction"][i][6]) : Core.nothing for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            sell_y = Core.Array{Core.Float64, 1}();
            # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Float64(test_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [(Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")) ? Core.Float64(test_result["Long_Position_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell") Core.Float64(test_result["Short_Selling_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            # [(Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")) ? Core.Float64(test_result["Short_Selling_date_transaction"][i][3]) : Core.nothing for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            sell_label = Core.Array{Core.String, 1}();
            # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [(Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")) ? Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(test_result["Long_Position_date_transaction"])];
            # [if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell") Base.string(Base.string(test_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(test_result["Short_Selling_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            # [(Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")) ? Base.string(Base.string(test_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(test_result["Short_Selling_date_transaction"][i][5])) : Core.nothing for i in 1:Base.length(test_result["Short_Selling_date_transaction"])];
            for i in 1:Base.length(test_result["Long_Position_date_transaction"])
                if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell")
                    # Base.push!(sell_x, test_result["Long_Position_date_transaction"][i][1]);
                    Base.push!(sell_x, Core.Int64(test_result["Long_Position_date_transaction"][i][6]));
                    Base.push!(sell_y, Core.Float64(test_result["Long_Position_date_transaction"][i][3]));
                    Base.push!(sell_label, Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])));
                end
            end
            # for i in 1:Base.length(test_result["Short_Selling_date_transaction"])
            #     if Base.string(test_result["Short_Selling_date_transaction"][i][2]) === Base.string("sell")
            #         # Base.push!(sell_x, test_result["Short_Selling_date_transaction"][i][1]);
            #         Base.push!(sell_x, Core.Int64(test_result["Short_Selling_date_transaction"][i][6]));
            #         Base.push!(sell_y, Core.Float64(test_result["Short_Selling_date_transaction"][i][3]));
            #         Base.push!(sell_label, Base.string(Base.string(test_result["Short_Selling_date_transaction"][i][2]) * " " * Base.string(test_result["Short_Selling_date_transaction"][i][5])));
            #     end
            # end
            points3 = Gadfly.layer(
                x = sell_x,  # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Int64(test_result["Long_Position_date_transaction"][i][6]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])],  # [Core.Int64(i) for i in 1:Base.length(testData_index["Long_Position_date_transaction"])],  # testData_index["Long_Position_date_transaction"],  # Xdata,
                y = sell_y,  # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Core.Float64(test_result["Long_Position_date_transaction"][i][3]) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])],  # testData_index["focus"],  # YdataMean,  # Ydata,
                Geom.point,
                label = sell_label,  # [if Base.string(test_result["Long_Position_date_transaction"][i][2]) === Base.string("sell") Base.string(Base.string(test_result["Long_Position_date_transaction"][i][2]) * " " * Base.string(test_result["Long_Position_date_transaction"][i][5])) else Core.nothing end for i in 1:Base.length(test_result["Long_Position_date_transaction"])],
                Geom.label(
                    position = :above,  # :left, :right, :above, :below, :centered, or :dynamic
                    hide_overlaps = true
                ),
                color = [colorant"green"],  # "aliceblue", "antiquewhite", "aqua", "aquamarine", "azure", "beige", "bisque", "black", "blanchedalmond", "blue", "blueviolet", "brown", "cadetblue", "chartreuse", "chocolate", "coral", "cornflowerblue", "cornsilk", "crimson", "cyan", "darkblue", "darkcyan", "darkgoldenrod", "darkgray", "darkgrey", "darkgreen", "darkkhaki", "darkmagenta", "darkolivegreen", "darkorange", "darkorchid", "darkred", "darksalmon", "darkseagreen", "darkslateblue", "darkslategray", "darkslategrey", "darkturquoise", "darkviolet", "deeppink", "deepskyblue", "dimgray", "dimgrey", "dodgerblue", "firebrick", "floralwhite", "forestgreen", "fuchsia", "gainsboro", "ghostwhite", "gold", "goldenrod", "gray", "grey", "green", "greenyellow", "honeydew", "hotpink", "indianred", "indigo", "ivory", "khaki", "lavender", "lavenderblush", "lawngreen", "lemonchiffon", "lightblue", "lightcoral", "lightcyan", "lightgoldenrodyellow", "lightgray", "lightgrey", "lightpink", "lightsalmon"
                Theme(
                    line_width = 1pt,
                    point_size = 3pt,
                    point_shapes = [Gadfly.Shape.vline],  # Gadfly.Shape.circle, Gadfly.Shape.square, Gadfly.Shape.diamond, Gadfly.Shape.cross, Gadfly.Shape.xcross, Gadfly.Shape.utriangle, Gadfly.Shape.dtriangle, Gadfly.Shape.star1, Gadfly.Shape.star2, Gadfly.Shape.hexagon, Gadfly.Shape.octagon, Gadfly.Shape.hline, Gadfly.Shape.vline, Gadfly.Shape.ltriangle, Gadfly.Shape.rtriangle
                )
            );
            img2 = Gadfly.plot(
                points1,
                # smoothline1,
                smoothline2,
                smoothline3,
                # ribbonline1,
                # smoothline4,
                # smoothline5,
                ribbonline2,
                points2,
                points3,
                # Guide.xlabel("Independent Variable ( x )"),
                Guide.xlabel("transaction date"),
                # Guide.ylabel("Dependent Variable ( y )"),
                Guide.ylabel("transaction price"),
                # Guide.manual_discrete_key("", ["observation values", "polyfit values"]; color=["blue", "red"]),
                Guide.xticks(
                    # ticks = [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # 設置 X 軸刻度值;
                    # ticks = [Base.string(Dates.format(testData_index["date_transaction"][i], "yyyy-mm-dd")) for i in 1:Base.length(testData_index["date_transaction"])],  # 設置 X 軸刻度標簽的文本;
                    # orientation = :vertical,  # 刻度標簽文本旋轉九十度垂直顯示;
                    label = false
                ),
                # Guide.yticks(
                #     ticks = [Core.Int64(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(testData_index["low_price"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(testData_index["high_price"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度值;
                #     ticks = [Base.string(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(testData_index["low_price"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(testData_index["high_price"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度標簽的文本;
                #     # ticks = [Core.Int64(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(testData_index["focus"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(testData_index["focus"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度值;
                #     # ticks = [Base.string(i) for i in Core.Int64(Base.floor(Core.Float64(Core.Float64(Base.findmin(testData_index["focus"])[1]) * Core.Float64(0.9)))):Core.Int64(Base.ceil(Core.Float64(Core.Float64(Base.findmax(testData_index["focus"])[1]) * Core.Float64(1.1))))],  # 設置 Y 軸刻度標簽的文本;
                #     orientation = :horizontal,  # 刻度標簽文本水平顯示;
                #     label = true
                # ),
                Guide.title("market timing model ( test )")
            );

            # img2 = Gadfly.plot(
            #     x = testData_index["date_transaction"],  # [Base.string(Dates.format(testData_index["date_transaction"][i], "yyyy-mm-dd")) for i in 1:Base.length(testData_index["date_transaction"])],  # [Core.Int64(i) for i in 1:Base.length(testData_index["date_transaction"])],  # testData_index["date_transaction"],  # Xdata,
            #     open = testData_index["opening_price"],
            #     high = testData_index["high_price"],
            #     low = testData_index["low_price"],
            #     close = testData_index["close_price"],
            #     Geom.candlestick,
            #     Scale.color_discrete_manual("green", "red"),
            #     Scale.x_discrete,
            #     Guide.title("market timing model ( test )"),
            #     # points2,
            #     # points3,
            #     # Guide.manual_discrete_key("Strategy Trading", ["buy", "sell"]; ["blue", "blue"]),
            #     # Guide.manual_discrete_key(title="Strategy Trading", labels=["buy", "sell"]; pos=[], color=["blue", "blue"], shape=[], size=[]),
            # );
            # Gadfly.draw(
            #     Gadfly.SVG(
            #         "./Curvefit.svg",
            #         21cm,
            #         21cm
            #     ),  # 保存爲 .svg 格式圖片;
            #     # Gadfly.PDF(
            #     #     "Curvefit.pdf",
            #     #     21cm,
            #     #     21cm
            #     # ),  # 保存爲 .pdf 格式圖片;
            #     # Gadfly.PNG(
            #     #     "Curvefit.png",
            #     #     21cm,
            #     #     21cm
            #     # ),  # 保存爲 .png 格式圖片;
            #     img2
            # );
        end

        # # Gadfly.hstack(img1, img2);
        # # Gadfly.title(Gadfly.hstack(img1, img2), "market timing model optimization");
        # Gadfly.vstack(Gadfly.hstack(img1), Gadfly.hstack(img2));
        # Gadfly.title(Gadfly.vstack(Gadfly.hstack(img1), Gadfly.hstack(img2)), "market timing model optimization");

        # resultDict[ticker_symbol]["Curve-fit-image"] = img1;  # 擬合曲綫繪圖;
        # resultDict[ticker_symbol]["Residual-image"] = img2;  # 擬合殘差繪圖;
        resultDict["Curve-fit-image"] = img1;  # 擬合曲綫繪圖;
        resultDict["Residual-image"] = img2;  # 擬合殘差繪圖;
    end

    return resultDict;
end



# # 函數使用示例;
# using JLD;  # 導入第三方擴展包「JLD」，用於操作 Julia 語言專有的硬盤「.jld」文檔數據，需要在控制臺先安裝第三方擴展包「JLD」：julia> using Pkg; Pkg.add("JLD") 成功之後才能使用;
# # https://github.com/JuliaIO/JLD.jl
# # using HDF5;
# # https://github.com/JuliaIO/HDF5.jl
# # using DataFrames;  # 導入第三方擴展包「DataFrames」，需要在控制臺先安裝第三方擴展包「DataFrames」：julia> using Pkg; Pkg.add("DataFrames") 成功之後才能使用;
# # https://github.com/JuliaData/DataFrames.jl
# # https://dataframes.juliadata.org/stable/
# JLD_K_Line_Daily_file = "C:/QuantitativeTrading/Data/steppingData.jld";
# # stepping_data = Base.Dict{Core.String, Core.Any}();
# stepping_data = JLD.load(
#     JLD_K_Line_Daily_file,
#     "stepping_data"
# );
# # println(stepping_data);
# # JLD.save(
# #     JLD_K_Line_Daily_file,
# #     "stepping_data",
# #     stepping_data
# # );

# training_data = Base.Dict{Core.String, Core.Any}();
# training_data = stepping_data;

# testing_data = Base.Dict{Core.String, Core.Any}();
# testing_data = stepping_data;

# return_MarketTiming_fit_model = MarketTiming_fit_model(
#     Base.Dict{Core.String, Core.Any}("002611" => training_data["002611"]),  # training_data,  # ::Base.Dict{Core.String, Core.Any} = Base.Dict{Core.String, Core.Any}(),  # ::Core.Array{Core.Float64, 2} = testing_data,  # ::Core.Array{Core.Float64, 2} = Core.Array{Core.Float64, 2}(undef, (0, 0)), # ::Core.Array{Core.Array{Core.Float64, 1}, 1} = Core.Array{Core.Array{Core.Float64, 1}, 1}(),
#     Core.Int64(10),  # P1,  # 觀察收益率歷史向前推的交易日長度;
#     Core.Float64(+0.58),  # P2  # 買入閾值;
#     Core.Float64(-0.02),  # P3  # 賣出閾值;
#     Core.Float64(0.0),  # P4,  # risk threshold drawdown loss; # 風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
#     Intuitive_Momentum_KLine,
#     "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
# );
# println("y_profit = ", return_MarketTiming_fit_model["002611"]["y_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
# println("y_Long_Position_profit = ", return_MarketTiming_fit_model["002611"]["y_Long_Position_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
# println("y_Short_Selling_profit = ", return_MarketTiming_fit_model["002611"]["y_Short_Selling_profit"]);  # 每兩次對衝交易利潤 × 頻率 × 權重，加權纍加總計;
# println("y_loss = ", return_MarketTiming_fit_model["002611"]["y_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
# println("y_Long_Position_loss = ", return_MarketTiming_fit_model["002611"]["y_Long_Position_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
# println("y_Short_Selling_loss = ", return_MarketTiming_fit_model["002611"]["y_Short_Selling_loss"]);  # 每兩次對衝交易最大回撤 × 頻率 × 權重，加權取極值總計;
# println("profit_total = ", return_MarketTiming_fit_model["002611"]["profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
# println("profit_Positive = ", return_MarketTiming_fit_model["002611"]["profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
# println("profit_Negative = ", return_MarketTiming_fit_model["002611"]["profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
# println("Long_Position_profit_total = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
# println("Long_Position_profit_Positive = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
# println("Long_Position_profit_Negative = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
# println("Short_Selling_profit_total = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_total"]);  # 每兩次對衝交易利潤 × 頻率，纍加總計;
# println("Short_Selling_profit_Positive = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Positive"]);  # 每兩次對衝交易收益纍加總計;
# println("Short_Selling_profit_Negative = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Negative"]);  # 每兩次對衝交易損失纍加總計;
# println("profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
# println("profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
# println("Long_Position_profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
# println("Long_Position_profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["Long_Position_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
# println("Short_Selling_profit_Positive_probability = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Positive_probability"]);  # 每兩次對衝交易正利潤概率;
# println("Short_Selling_profit_Negative_probability = ", return_MarketTiming_fit_model["002611"]["Short_Selling_profit_Negative_probability"]);  # 每兩次對衝交易負利潤概率;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_profit_date_transaction"]);  # 每兩次對衝交易利潤，向量;
# println("maximum_drawdown = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
# println("maximum_drawdown_Long_Position = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
# println("maximum_drawdown_Short_Selling = ", return_MarketTiming_fit_model["002611"]["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
# # println("Long_Position_drawdown_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
# # println("Short_Selling_drawdown_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
# println("average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
# println("Long_Position_average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
# println("Short_Selling_average_price_amplitude_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_price_amplitude_date_transaction"]);  # 兩兩次對衝交易日成交價振幅平方和，均值;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_price_amplitude_date_transaction"]);  # 兩次對衝交易日成交價振幅平方和，向量;
# println("average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
# println("Long_Position_average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
# println("Short_Selling_average_volume_turnover_date_transaction = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）均值;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_volume_turnover_date_transaction"]);  # 兩次對衝交易日成交量（換手率）向量;
# println("average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["average_date_transaction_between"]);  # 兩次交易間隔日長，均值;
# println("Long_Position_average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["Long_Position_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
# println("Short_Selling_average_date_transaction_between = ", return_MarketTiming_fit_model["002611"]["Short_Selling_average_date_transaction_between"]);  # 兩次對衝交易間隔日長，均值;
# println("weight_MarketTiming = ", return_MarketTiming_fit_model["002611"]["weight_MarketTiming"]);  # 擇時權重，每兩次對衝交易的盈利概率占比;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction_between"]);  # 兩次對衝交易間隔日長，向量;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"]);  # 按規則執行交易的日期，向量;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][1]);  # 交易規則自動選取的交易日期;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][3]);  # 交易規則自動選取的成交價;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][4]);  # 交易規則自動選取的成交量;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][8]);  # 當日總成交量（turnover volume）;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][9]);  # 當日開盤（opening）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][10]);  # 當日收盤（closing）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][11]);  # 當日最低（low）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][12]);  # 當日最高（high）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][15]);  # 當日每股收益（price earnings）;
# # println(return_MarketTiming_fit_model["002611"]["Long_Position_date_transaction"][16]);  # 當日每股净值（book value per share）;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"]);  # 按規則執行交易的日期，向量;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][1]);  # 交易規則自動選取的交易日期;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][2]);  # 交易規則自動選取的買入或賣出;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][3]);  # 交易規則自動選取的成交價;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][4]);  # 交易規則自動選取的成交量;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][5]);  # 交易規則自動選取的成交次數記錄;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][6]);  # 交易規則自動選取的交易日期的序列號，用於繪圖可視化;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][7]);  # 交易日（Dates.Date 類型）;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][8]);  # 當日總成交量（turnover volume）;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][9]);  # 當日開盤（opening）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][10]);  # 當日收盤（closing）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][11]);  # 當日最低（low）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][12]);  # 當日最高（high）成交價;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][13]);  # 當日總成交金額（turnover amount）;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][14]);  # 當日成交量（turnover volume）換手率（turnover rate）;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][15]);  # 當日每股收益（price earnings）;
# # println(return_MarketTiming_fit_model["002611"]["Short_Selling_date_transaction"][16]);  # 當日每股净值（book value per share）;
# # println(return_MarketTiming_fit_model["002611"]["revenue_and_expenditure_records_date_transaction"]);  # 每次交易的收支記錄序列，不區分做多（Long Position）或做空（Short Selling），向量;
# # println(return_MarketTiming_fit_model["002611"]["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;

# result = MarketTiming(
#     training_data = Base.Dict{Core.String, Core.Any}("002611" => training_data["002611"]),  # ::Core.Array{Core.Float64, 2} = testing_data,  # ::Core.Array{Core.Float64, 2} = Core.Array{Core.Float64, 2}(undef, (0, 0)), # ::Core.Array{Core.Array{Core.Float64, 1}, 1} = Core.Array{Core.Array{Core.Float64, 1}, 1}(),
#     # training_date_transaction = Core.Array{Dates.Date, 1}(),
#     # training_opening_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # training_close_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # training_low_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # training_high_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # training_turnover_volume = Core.Array{Core.Union{Core.UInt64, Core.String, Core.Nothing}, 1}(),
#     # training_turnover_rate = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # training_price_earnings = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     testing_data = Base.Dict{Core.String, Core.Any}("002611" => testing_data["002611"]),  # ::Core.Array{Core.Float64, 2};  # ::Core.Array{Core.Array{Core.Float64, 1}, 1};
#     # testing_date_transaction = Core.Array{Dates.Date, 1}(),
#     # testing_opening_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # testing_close_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # testing_low_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # testing_high_price = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # testing_turnover_volume = Core.Array{Core.Union{Core.UInt64, Core.String, Core.Nothing}, 1}(),
#     # testing_turnover_rate = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     # testing_price_earnings = Core.Array{Core.Union{Core.Float16, Core.String, Core.Nothing}, 1}(),
#     Pdata_0 = [Core.Int64(3), Core.Float64(+0.1), Core.Float64(-0.1), Core.Float64(0.0)],  #training_data["002611"]["Pdata_0"],
#     # weight = Core.Array{Core.Float64, 1}(),  # training_data["002611"]["weight"],
#     Plower = [-Base.Inf, -Base.Inf, -Base.Inf, -Base.Inf],  # training_data["002611"]["Plower"],
#     Pupper = [+Base.Inf, +Base.Inf, +Base.Inf, +Base.Inf],  # training_data["002611"]["Pupper"],
#     MarketTiming_fit_model = MarketTiming_fit_model,
#     Quantitative_Indicators_Function = Intuitive_Momentum_KLine,
#     investment_method = "Long_Position_and_Short_Selling"  # "Long_Position_and_Short_Selling" , "Long_Position" , "Short_Selling" ;
# );
# println("Coefficient : ", result["002611"]["Coefficient"]);  # 優化得到的參數;
# # println(result["002611"]["P1_Array"]);  # 依照擇時規則計算得到參數 P1 值的序列存儲數組;
# println("profit total per share : ", result["002611"]["testData"]["profit_total"]);
# println("profit positive per share : ", result["002611"]["testData"]["profit_Positive"]);
# println("profit negative per share : ", result["002611"]["testData"]["profit_Negative"]);
# println("Long Position profit total per share : ", result["002611"]["testData"]["Long_Position_profit_total"]);
# println("Long Position profit positive per share : ", result["002611"]["testData"]["Long_Position_profit_Positive"]);
# println("Long Position profit negative per share : ", result["002611"]["testData"]["Long_Position_profit_Negative"]);
# println("Short Selling profit total per share : ", result["002611"]["testData"]["Short_Selling_profit_total"]);
# println("Short Selling profit positive per share : ", result["002611"]["testData"]["Short_Selling_profit_Positive"]);
# println("Short Selling profit negative per share : ", result["002611"]["testData"]["Short_Selling_profit_Negative"]);
# println("maximum drawdown per share : ", result["002611"]["testData"]["maximum_drawdown"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
# println("maximum drawdown Long Position per share : ", result["002611"]["testData"]["maximum_drawdown_Long_Position"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
# println("maximum drawdown Short Selling per share : ", result["002611"]["testData"]["maximum_drawdown_Short_Selling"]);  # 兩次對衝交易之間的最大回撤值，取極值統計;
# # println("Long Position drawdown date transaction : ", result["002611"]["testData"]["Long_Position_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
# # println("Short Selling drawdown date transaction : ", result["002611"]["testData"]["Short_Selling_drawdown_date_transaction"]);  # 向量，記錄做多模式每組對衝交易日的回撤值序列，風險控制閾值，强制平倉，可接受的最大回撤比例：Long_Position = sell_price ÷ buy_price、Short_Selling = 1 + ((sell_price - buy_price) ÷ sell_price) ;
# println("profit positive probability : ", result["002611"]["testData"]["profit_Positive_probability"]);
# println("profit negative probability : ", result["002611"]["testData"]["profit_Negative_probability"]);
# println("Long Position profit positive probability : ", result["002611"]["testData"]["Long_Position_profit_Positive_probability"]);
# println("Long Position profit negative probability : ", result["002611"]["testData"]["Long_Position_profit_Negative_probability"]);
# println("Short Selling profit positive probability : ", result["002611"]["testData"]["Short_Selling_profit_Positive_probability"]);
# println("Short Selling profit negative probability : ", result["002611"]["testData"]["Short_Selling_profit_Negative_probability"]);
# println("average date transaction between : ", result["002611"]["testData"]["average_date_transaction_between"]);
# println("Long Position average date transaction between : ", result["002611"]["testData"]["Long_Position_average_date_transaction_between"]);
# println("Short Selling average date transaction between : ", result["002611"]["testData"]["Short_Selling_average_date_transaction_between"]);
# println("number Long Position date transaction : ", Base.length(result["002611"]["testData"]["Long_Position_date_transaction"]));
# println("number Short Selling date transaction : ", Base.length(result["002611"]["testData"]["Short_Selling_date_transaction"]));
# println("weight MarketTiming : ", result["002611"]["testData"]["weight_MarketTiming"]);  # 擇時權重，每兩次對衝交易的盈利概率占比;
# # println(result["002611"]["testData"]["P1_Array"]);
# # println(result["002611"]["testData"]["Long_Position_date_transaction"]);
# # println(result["002611"]["testData"]["Short_Selling_date_transaction"]);
# # println(result["002611"]["testData"]);
# # Gadfly.hstack(result["002611"]["Curve-fit-image"], result["002611"]["Residual-image"]);
# # Gadfly.title(Gadfly.hstack(result["002611"]["Curve-fit-image"], result["002611"]["Residual-image"]), "market timing model optimization");
# # Gadfly.vstack(Gadfly.hstack(result["002611"]["Curve-fit-image"]), Gadfly.hstack(result["002611"]["Residual-image"]));
# # Gadfly.title(Gadfly.vstack(Gadfly.hstack(result["002611"]["Curve-fit-image"]), Gadfly.hstack(result["002611"]["Residual-image"])), "market timing model optimization");
# # Gadfly.hstack(result["Curve-fit-image"], result["Residual-image"]);
# # Gadfly.title(Gadfly.hstack(result["Curve-fit-image"], result["Residual-image"]), "market timing model optimization");
# Gadfly.vstack(Gadfly.hstack(result["Curve-fit-image"]), Gadfly.hstack(result["Residual-image"]));
# Gadfly.title(Gadfly.vstack(Gadfly.hstack(result["Curve-fit-image"]), Gadfly.hstack(result["Residual-image"])), "market timing model optimization");
# # Gadfly.draw(
# #     Gadfly.SVG(
# #         "./Curvefit.svg",
# #         21cm,
# #         21cm
# #     ),  # 保存爲 .svg 格式圖片;
# #     # Gadfly.PDF(
# #     #     "Curvefit.pdf",
# #     #     21cm,
# #     #     21cm
# #     # ),  # 保存爲 .pdf 格式圖片;
# #     # Gadfly.PNG(
# #     #     "Curvefit.png",
# #     #     21cm,
# #     #     21cm
# #     # ),  # 保存爲 .png 格式圖片;
# #     result["Curve-fit-image"]
# # );
# # Gadfly.draw(
# #     Gadfly.SVG(
# #         "./Residual.svg",
# #         21cm,
# #         21cm
# #     ),  # 保存爲 .svg 格式圖片;
# #     # Gadfly.PDF(
# #     #     "Residual.pdf",
# #     #     21cm,
# #     #     21cm
# #     # ),  # 保存爲 .pdf 格式圖片;
# #     # Gadfly.PNG(
# #     #     "Residual.png",
# #     #     21cm,
# #     #     21cm
# #     # ),  # 保存爲 .png 格式圖片;
# #     result["Residual-image"]
# # );
