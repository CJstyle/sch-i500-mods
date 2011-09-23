.class Lcom/sec/android/app/cradle/WeatherClockData$1;
.super Lcom/sec/android/app/cradle/HttpResponseHandler;
.source "WeatherClockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/WeatherClockData;->getSearchData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/WeatherClockData;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    invoke-direct {p0}, Lcom/sec/android/app/cradle/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;Ljava/lang/String;)V
    .locals 21
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 229
    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/cradle/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 230
    const/16 v18, 0xc8

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 231
    const/4 v11, 0x0

    .line 232
    .local v11, getLength:I
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 233
    .local v6, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 234
    .local v5, db:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v7, 0x0

    .line 236
    .local v7, dom:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 237
    new-instance v18, Lorg/xml/sax/InputSource;

    new-instance v19, Ljava/io/StringReader;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 238
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 239
    .local v16, root:Lorg/w3c/dom/Element;
    const-string v18, "citylist"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 240
    .local v13, list:Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 241
    .local v8, element:Lorg/w3c/dom/Element;
    const-string v18, "us"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 242
    const-string v18, "intl"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int v11, v11, v18

    .line 243
    const-string v18, "extra_cities"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    add-int v11, v11, v18

    .line 244
    if-nez v11, :cond_2

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mSearchCityList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #dom:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v11           #getLength:I
    .end local v13           #list:Lorg/w3c/dom/NodeList;
    .end local v16           #root:Lorg/w3c/dom/Element;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/cradle/WeatherClockData;->access$100(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/cradle/WeatherClockData;->access$200(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/cradle/WeatherClockData;->access$100(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    :cond_1
    return-void

    .line 249
    .restart local v5       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v7       #dom:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v11       #getLength:I
    .restart local v13       #list:Lorg/w3c/dom/NodeList;
    .restart local v16       #root:Lorg/w3c/dom/Element;
    :cond_2
    :try_start_1
    const-string v18, "location"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 250
    .local v14, lists:Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mSearchCityList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 251
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v11, :cond_0

    .line 252
    invoke-interface {v14, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 253
    .local v9, elements:Lorg/w3c/dom/Element;
    const-string v18, "city"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, city:Ljava/lang/String;
    const-string v18, "state"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 255
    .local v17, state:Ljava/lang/String;
    const-string v18, "location"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mSearchCityList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v17

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 251
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 260
    .end local v4           #city:Ljava/lang/String;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #elements:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v13           #list:Lorg/w3c/dom/NodeList;
    .end local v14           #lists:Lorg/w3c/dom/NodeList;
    .end local v15           #location:Ljava/lang/String;
    .end local v16           #root:Lorg/w3c/dom/Element;
    .end local v17           #state:Ljava/lang/String;
    :catch_0
    move-exception v18

    move-object/from16 v10, v18

    .line 261
    .local v10, ex:Ljava/lang/Exception;
    const-string v18, "WeatherClockMenuAdd"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[jangth]Search Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/cradle/WeatherClockData;->access$000(Lcom/sec/android/app/cradle/WeatherClockData;)V

    goto/16 :goto_0

    .line 275
    .end local v5           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v6           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7           #dom:Lorg/w3c/dom/Document;
    .end local v10           #ex:Ljava/lang/Exception;
    .end local v11           #getLength:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->mSearchCityList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$1;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0
.end method
