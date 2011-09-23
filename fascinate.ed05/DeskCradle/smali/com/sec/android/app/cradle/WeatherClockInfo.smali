.class public Lcom/sec/android/app/cradle/WeatherClockInfo;
.super Ljava/lang/Object;
.source "WeatherClockInfo.java"


# instance fields
.field private defaultlocation:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private summertime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "location"
    .parameter "defaultlocation"
    .parameter "summertime"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->location:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->defaultlocation:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->summertime:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultlocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->defaultlocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getSummertime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockInfo;->summertime:Ljava/lang/String;

    return-object v0
.end method
