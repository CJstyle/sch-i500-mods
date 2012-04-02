.class Lcom/sec/android/app/cradle/WeatherClockData$2;
.super Lcom/sec/android/app/cradle/HttpResponseHandler;
.source "WeatherClockData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/cradle/WeatherClockData;->getData(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/cradle/WeatherClockData;

.field final synthetic val$cityName:Ljava/lang/String;

.field final synthetic val$locationName:Ljava/lang/String;

.field final synthetic val$mCalendar:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    iput-object p2, p0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$cityName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/sec/android/app/cradle/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/lang/String;Ljava/lang/String;)V
    .locals 29
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 331
    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/cradle/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v2, 0xc8

    move/from16 v0, p1

    move v1, v2

    if-ne v0, v1, :cond_7

    .line 333
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v19

    .line 334
    .local v19, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v18, 0x0

    .line 335
    .local v18, db:Ljavax/xml/parsers/DocumentBuilder;
    const/16 v20, 0x0

    .line 341
    .local v20, dom:Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v18

    .line 342
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v20

    .line 343
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v27

    .line 346
    .local v27, root:Lorg/w3c/dom/Element;
    const-string v2, "local"

    move-object/from16 v0, v27

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 347
    .local v25, localNode:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    move-object/from16 v0, v25

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/w3c/dom/Element;

    const-string v2, "time"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    .line 348
    .local v26, localTimeString:Ljava/lang/String;
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 349
    .local v17, dateFormat:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 350
    const-string v2, "current"

    move-object/from16 v0, v27

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 352
    .local v15, currentCondition:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    .line 353
    const-string v2, "currentconditions"

    move-object/from16 v0, v27

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 356
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v2, "temperature"

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    .line 357
    .local v28, temperatureString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherHighTemp:I

    .line 358
    const-string v2, "units"

    move-object/from16 v0, v27

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 359
    .local v16, currentTempUnit:Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    const-string v3, "temp"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mUnitString:Ljava/lang/String;

    .line 361
    const-string v2, "WeatherClockData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local Time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual/range {v17 .. v17}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v24

    .line 363
    .local v24, localHour:I
    const/16 v2, 0x12

    move/from16 v0, v24

    move v1, v2

    if-ge v0, v1, :cond_5

    .line 364
    const-string v2, "daytime"

    move-object/from16 v0, v27

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 365
    .local v23, list:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 366
    .local v21, element:Lorg/w3c/dom/Element;
    const-string v2, "hightemperature"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 367
    .local v5, highTemp:I
    const-string v2, "lowtemperature"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 368
    .local v6, lowTemp:I
    const-string v2, "weathericon"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 371
    .local v7, weatherIconNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$cityName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/cradle/WeatherClockData;->access$300(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/String;Ljava/lang/String;III)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mainInfoLocationCheck(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%tF %tR"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v14, v0

    aput-object v14, v4, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v14, v0

    aput-object v14, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->updateWeatherMainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v15           #currentCondition:Lorg/w3c/dom/NodeList;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 396
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$100(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iput v7, v2, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$200(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v3, v0

    invoke-static {v3}, Lcom/sec/android/app/cradle/WeatherClockData;->access$100(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    .end local v5           #highTemp:I
    .end local v6           #lowTemp:I
    .end local v7           #weatherIconNum:I
    .end local v16           #currentTempUnit:Lorg/w3c/dom/NodeList;
    .end local v17           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v18           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v19           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20           #dom:Lorg/w3c/dom/Document;
    .end local v21           #element:Lorg/w3c/dom/Element;
    .end local v23           #list:Lorg/w3c/dom/NodeList;
    .end local v24           #localHour:I
    .end local v25           #localNode:Lorg/w3c/dom/NodeList;
    .end local v26           #localTimeString:Ljava/lang/String;
    .end local v27           #root:Lorg/w3c/dom/Element;
    .end local v28           #temperatureString:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 376
    .restart local v5       #highTemp:I
    .restart local v6       #lowTemp:I
    .restart local v7       #weatherIconNum:I
    .restart local v15       #currentCondition:Lorg/w3c/dom/NodeList;
    .restart local v16       #currentTempUnit:Lorg/w3c/dom/NodeList;
    .restart local v17       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v18       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v19       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v20       #dom:Lorg/w3c/dom/Document;
    .restart local v21       #element:Lorg/w3c/dom/Element;
    .restart local v23       #list:Lorg/w3c/dom/NodeList;
    .restart local v24       #localHour:I
    .restart local v25       #localNode:Lorg/w3c/dom/NodeList;
    .restart local v26       #localTimeString:Ljava/lang/String;
    .restart local v27       #root:Lorg/w3c/dom/Element;
    .restart local v28       #temperatureString:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$cityName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v10, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%tF %tR"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v15, v0

    .end local v15           #currentCondition:Lorg/w3c/dom/NodeList;
    aput-object v15, v4, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v15, v0

    aput-object v15, v4, v14

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v8 .. v14}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->insertWeatherMainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 401
    .end local v5           #highTemp:I
    .end local v6           #lowTemp:I
    .end local v7           #weatherIconNum:I
    .end local v16           #currentTempUnit:Lorg/w3c/dom/NodeList;
    .end local v17           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v21           #element:Lorg/w3c/dom/Element;
    .end local v23           #list:Lorg/w3c/dom/NodeList;
    .end local v24           #localHour:I
    .end local v25           #localNode:Lorg/w3c/dom/NodeList;
    .end local v26           #localTimeString:Ljava/lang/String;
    .end local v27           #root:Lorg/w3c/dom/Element;
    .end local v28           #temperatureString:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object/from16 v22, v2

    .line 402
    .local v22, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_4

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 404
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$000(Lcom/sec/android/app/cradle/WeatherClockData;)V

    goto :goto_1

    .line 379
    .end local v22           #ex:Ljava/lang/Exception;
    .restart local v15       #currentCondition:Lorg/w3c/dom/NodeList;
    .restart local v16       #currentTempUnit:Lorg/w3c/dom/NodeList;
    .restart local v17       #dateFormat:Ljava/text/SimpleDateFormat;
    .restart local v24       #localHour:I
    .restart local v25       #localNode:Lorg/w3c/dom/NodeList;
    .restart local v26       #localTimeString:Ljava/lang/String;
    .restart local v27       #root:Lorg/w3c/dom/Element;
    .restart local v28       #temperatureString:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, "nighttime"

    move-object/from16 v0, v27

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 380
    .restart local v23       #list:Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    move v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    .line 381
    .restart local v21       #element:Lorg/w3c/dom/Element;
    const-string v2, "hightemperature"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 382
    .restart local v5       #highTemp:I
    const-string v2, "lowtemperature"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 383
    .restart local v6       #lowTemp:I
    const-string v2, "weathericon"

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 387
    .restart local v7       #weatherIconNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$cityName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/cradle/WeatherClockData;->access$300(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/String;Ljava/lang/String;III)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mainInfoLocationCheck(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%tF %tR"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v14, v0

    aput-object v14, v4, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v14, v0

    aput-object v14, v4, v13

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->updateWeatherMainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$cityName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$locationName:Ljava/lang/String;

    move-object v10, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Updated : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%tF %tR"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v15, v0

    .end local v15           #currentCondition:Lorg/w3c/dom/NodeList;
    aput-object v15, v4, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->val$mCalendar:Ljava/util/Calendar;

    move-object v15, v0

    aput-object v15, v4, v14

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v8 .. v14}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->insertWeatherMainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 416
    .end local v5           #highTemp:I
    .end local v6           #lowTemp:I
    .end local v7           #weatherIconNum:I
    .end local v16           #currentTempUnit:Lorg/w3c/dom/NodeList;
    .end local v17           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v18           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v19           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v20           #dom:Lorg/w3c/dom/Document;
    .end local v21           #element:Lorg/w3c/dom/Element;
    .end local v23           #list:Lorg/w3c/dom/NodeList;
    .end local v24           #localHour:I
    .end local v25           #localNode:Lorg/w3c/dom/NodeList;
    .end local v26           #localTimeString:Ljava/lang/String;
    .end local v27           #root:Lorg/w3c/dom/Element;
    .end local v28           #temperatureString:Ljava/lang/String;
    .restart local p1
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$500(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$500(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_8

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_8

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    iget-object v2, v2, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/cradle/WeatherClockData$2;->this$0:Lcom/sec/android/app/cradle/WeatherClockData;

    move-object v2, v0

    invoke-static {v2}, Lcom/sec/android/app/cradle/WeatherClockData;->access$000(Lcom/sec/android/app/cradle/WeatherClockData;)V

    goto/16 :goto_1
.end method
