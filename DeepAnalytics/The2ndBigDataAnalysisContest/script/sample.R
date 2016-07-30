# sample.R
# 単純なモデルを作成し、予測結果のファイルを作成するところまで

# 単回帰モデルの生成
model = lm(y ~ natural_lawson_store, data = train)
summary(model)

# モデルを用いてテストデータを予測する
model.predict = predict(model, test)

result = data.frame(id = test[, "id"], y = model.predict)
str(result)
write.table(result, "sample_output.csv", quote = FALSE, sep = ',', row.names = FALSE, col.names = FALSE)
