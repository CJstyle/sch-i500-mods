.class public Lcom/sec/android/app/cradle/WeatherClockListItem;
.super Ljava/lang/Object;
.source "WeatherClockListItem.java"


# instance fields
.field private cityCheck:Ljava/lang/String;

.field private cityName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "cityName"
    .parameter "cityCheck"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockListItem;->cityName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/sec/android/app/cradle/WeatherClockListItem;->cityCheck:Ljava/lang/String;

    .line 11
    return-void
.end method
