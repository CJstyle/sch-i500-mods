.class public Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;
.super Ljava/lang/Object;
.source "WeatherClockMenuSetDSTRow.java"


# instance fields
.field private cityName:Ljava/lang/String;

.field private image:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"
    .parameter "image"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;->cityName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;->image:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;->image:Ljava/lang/String;

    return-object v0
.end method
