.class public Lcom/sec/android/app/cradle/WeatherClockData;
.super Ljava/lang/Object;
.source "WeatherClockData.java"


# static fields
.field static final ERROR_NETWORK_ACCESS_GOTO:I = 0x44c

.field static final ERROR_NETWORK_ACCESS_RETRY:I = 0x44d

.field private static final TAG:Ljava/lang/String; = "WeatherClockMenuAdd"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

.field private mOnCancel:Ljava/lang/Runnable;

.field private mOnData:Ljava/lang/Runnable;

.field private mOnNetFail:Ljava/lang/Runnable;

.field public mSearchCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShowNetworkFailPopup:Z

.field public mUnitString:Ljava/lang/String;

.field public mWeatherHighTemp:I

.field public mWeatherIcon:I

.field myProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHandler:Landroid/os/Handler;

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    .line 58
    iput-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnCancel:Ljava/lang/Runnable;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mShowNetworkFailPopup:Z

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mActivity:Landroid/app/Activity;

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/sec/android/app/cradle/AdvancedHttpClient;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/cradle/AdvancedHttpClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    .line 75
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mDBHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mSearchCityList:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method private LogData(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 4
    .parameter "cityName"
    .parameter "locationiName"
    .parameter "highTemp"
    .parameter "lowTemp"
    .parameter "weatherIconNum"

    .prologue
    const/16 v3, 0x1e

    const-string v2, "WeatherClockMenuAdd"

    .line 289
    const-string v0, "WeatherClockMenuAdd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "city: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v0, "WeatherClockMenuAdd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "high: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p3, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p4, v3

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v0, "WeatherClockMenuAdd"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/cradle/WeatherClockData;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->showNetConnFailDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/cradle/WeatherClockData;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/cradle/WeatherClockData;->LogData(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/cradle/WeatherClockData;)Lcom/sec/android/app/cradle/WeatherClockDBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mDBHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/cradle/WeatherClockData;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnCancel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnCancel:Ljava/lang/Runnable;

    return-object p1
.end method

.method private getAlertDialog(Landroid/content/Context;I)Landroid/app/AlertDialog$Builder;
    .locals 2
    .parameter "context"
    .parameter "msgResId"

    .prologue
    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 147
    return-object v0
.end method

.method private getData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "cityName"
    .parameter "locationName"

    .prologue
    const-string v1, "http"

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->checkNetworkConnection()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 296
    new-instance v7, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v7}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    .line 297
    .local v7, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "User-Agent"

    const-string v3, "SAMSUNG-Android2"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 298
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept"

    const-string v3, "text/html,application/xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 299
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "text/xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/WeatherClockData;->getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 302
    .local v9, timeZoneName:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v8

    .line 304
    .local v8, mCalendar:Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->showLoadingWeatherProgressDialog()V

    .line 306
    const/4 v10, 0x0

    .line 308
    .local v10, url:Ljava/net/URL;
    :try_start_0
    const-string v1, "cityId"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsungmobile.accu-weather.com"

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/widget/samsungmobile/briefing_weather.asp?metric=1&location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v10           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    new-instance v2, Lcom/sec/android/app/cradle/WeatherClockData$2;

    invoke-direct {v2, p0, p1, p2, v8}, Lcom/sec/android/app/cradle/WeatherClockData$2;-><init>(Lcom/sec/android/app/cradle/WeatherClockData;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->get(Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V

    .line 419
    .end local v0           #url:Ljava/net/URL;
    .end local v7           #headerGroup:Lorg/apache/http/message/HeaderGroup;
    .end local v8           #mCalendar:Ljava/util/Calendar;
    .end local v9           #timeZoneName:Ljava/lang/String;
    :cond_0
    return-void

    .line 312
    .restart local v7       #headerGroup:Lorg/apache/http/message/HeaderGroup;
    .restart local v8       #mCalendar:Ljava/util/Calendar;
    .restart local v9       #timeZoneName:Ljava/lang/String;
    .restart local v10       #url:Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsu.accu-weather.com"

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/widget/samsu/weather-data.asp?location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v10           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_0

    .line 315
    .end local v0           #url:Ljava/net/URL;
    .restart local v10       #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 316
    .local v6, e:Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 317
    const-string v1, "WeatherClockMenuAdd"

    const-string v2, "[jangth] getData MalformedURLException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->showNetConnFailDialog()V

    move-object v0, v10

    .end local v10           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_0
.end method

.method private getSearchData(Ljava/lang/String;)V
    .locals 9
    .parameter "data"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->checkNetworkConnection()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 203
    new-instance v7, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v7}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    .line 204
    .local v7, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "User-Agent"

    const-string v3, "SAMSUNG-Android2"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 205
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept"

    const-string v3, "text/html,application/xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 206
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "text/xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 208
    invoke-direct {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->showLoadingWeatherProgressDialog()V

    .line 210
    const/4 v8, 0x0

    .line 212
    .local v8, url:Ljava/net/URL;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    const-string v2, "samsu.accu-weather.com"

    const/16 v3, 0x50

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/widget/samsu/city-find.asp?location="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v8           #url:Ljava/net/URL;
    .local v0, url:Ljava/net/URL;
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    new-instance v2, Lcom/sec/android/app/cradle/WeatherClockData$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/cradle/WeatherClockData$1;-><init>(Lcom/sec/android/app/cradle/WeatherClockData;)V

    invoke-virtual {v1, v0, v7, v2}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->get(Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/app/cradle/HttpResponseHandler;)V

    .line 286
    .end local v0           #url:Ljava/net/URL;
    .end local v7           #headerGroup:Lorg/apache/http/message/HeaderGroup;
    :cond_0
    return-void

    .line 214
    .restart local v7       #headerGroup:Lorg/apache/http/message/HeaderGroup;
    .restart local v8       #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 215
    .local v6, e:Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    const-string v1, "WeatherClockMenuAdd"

    const-string v2, "[jangth] getSearchData MalformedURLException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/sec/android/app/cradle/WeatherClockData;->showNetConnFailDialog()V

    move-object v0, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v0       #url:Ljava/net/URL;
    goto :goto_0
.end method

.method private getTimeZoneName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cityName"

    .prologue
    .line 422
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, ids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 425
    :try_start_0
    aget-object v4, v2, v1

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, str:[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_0

    .line 427
    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    aget-object v4, v2, v1

    .line 437
    .end local v3           #str:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 431
    .restart local v3       #str:[Ljava/lang/String;
    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    aget-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 434
    .end local v3           #str:[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 423
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private showLoadingWeatherProgressDialog()V
    .locals 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/cradle/WeatherClockData$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/cradle/WeatherClockData$3;-><init>(Lcom/sec/android/app/cradle/WeatherClockData;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 496
    return-void
.end method

.method private showNetConnFailDialog()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "WeatherClockMenuAdd"

    const-string v1, "[jangth] showNetConnFailDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelLoadingWeather()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->myProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method public checkNetworkConnection()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mShowNetworkFailPopup:Z

    if-ne v0, v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 195
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 198
    :goto_1
    return v0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "WeatherClockMenuAdd"

    const-string v1, "[jangth] checkNetworkConnection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 198
    goto :goto_1
.end method

.method public getCityList(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "cityName"
    .parameter "onData"
    .parameter "onFail"

    .prologue
    .line 126
    iput-object p2, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    .line 127
    iput-object p3, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    .line 129
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/WeatherClockData;->getSearchData(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public getCitycount()I
    .locals 2

    .prologue
    .line 450
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mDBHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->selectAllCityordefault()Ljava/util/ArrayList;

    move-result-object v0

    .line 452
    .local v0, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockListItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method public getDefaultCityName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mDBHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->selectAllCityordefault()Ljava/util/ArrayList;

    move-result-object v0

    .line 83
    .local v0, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockListItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/WeatherClockListItem;

    .line 84
    .local v2, item:Lcom/sec/android/app/cradle/WeatherClockListItem;
    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockListItem;->getCityCheck()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 85
    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockListItem;->getCityName()Ljava/lang/String;

    move-result-object v3

    .line 88
    .end local v2           #item:Lcom/sec/android/app/cradle/WeatherClockListItem;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 1
    .parameter "cityName"
    .parameter "cityLocation"
    .parameter "onData"
    .parameter "onFail"
    .parameter "onCancel"
    .parameter "showPopup"

    .prologue
    .line 94
    iput-object p3, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnData:Ljava/lang/Runnable;

    .line 95
    iput-object p4, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnNetFail:Ljava/lang/Runnable;

    .line 96
    iput-object p5, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mOnCancel:Ljava/lang/Runnable;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mWeatherIcon:I

    .line 99
    iput-boolean p6, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mShowNetworkFailPopup:Z

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/cradle/WeatherClockData;->getData(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public isNetworkConnected()Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkConnectedByMoblie()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mHttpClient:Lcom/sec/android/app/cradle/AdvancedHttpClient;

    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/cradle/AdvancedHttpClient;->isNetWorkConnectedByMoblie(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x0

    .line 469
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public locationCheck(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockData;->mDBHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->locationCheck(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
