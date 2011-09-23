.class public Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;
.super Ljava/lang/Object;
.source "WeatherClockMenuAddRow.java"


# instance fields
.field private city:Ljava/lang/String;

.field private location:Ljava/lang/String;

.field private state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "city"
    .parameter "state"
    .parameter "location"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;->city:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;->state:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;->location:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockMenuAddRow;->state:Ljava/lang/String;

    return-object v0
.end method
