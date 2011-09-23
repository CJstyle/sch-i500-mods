.class public final Lcom/sec/android/app/cradle/Controller$WeatherColumns;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WeatherColumns"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "InfoAlarm"

.field public static final COUNT:Ljava/lang/String; = "count(WEATHER_INDEX)"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "WEATHER_INDEX ASC"

.field public static final TABLE_URI:Landroid/net/Uri; = null

.field public static final WEATHER_CITY_LOCATION:Ljava/lang/String; = "WEATHER_CITY_LOCATION"

.field public static final WEATHER_CITY_NAME:Ljava/lang/String; = "WEATHER_CITY_NAME"

.field public static final WEATHER_CITY_STATE:Ljava/lang/String; = "WEATHER_CITY_STATE"

.field public static final WEATHER_CITY_TIME:Ljava/lang/String; = "WEATHER_CITY_TIME"

.field public static final WEATHER_FORECAST_DAY1_DATE:Ljava/lang/String; = "WEATHER_FORECAST_DAY1_DATE"

.field public static final WEATHER_FORECAST_DAY1_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY1_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY1_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY1_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY1_URL:Ljava/lang/String; = "WEATHER_FORECAST_DAY1_URL"

.field public static final WEATHER_FORECAST_DAY1_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_DAY1_WEATHERICON"

.field public static final WEATHER_FORECAST_DAY1_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_DAY1_WEATHERTEXT"

.field public static final WEATHER_FORECAST_DAY2_DATE:Ljava/lang/String; = "WEATHER_FORECAST_DAY2_DATE"

.field public static final WEATHER_FORECAST_DAY2_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY2_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY2_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY2_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY2_URL:Ljava/lang/String; = "WEATHER_FORECAST_DAY2_URL"

.field public static final WEATHER_FORECAST_DAY2_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_DAY2_WEATHERICON"

.field public static final WEATHER_FORECAST_DAY2_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_DAY2_WEATHERTEXT"

.field public static final WEATHER_FORECAST_DAY3_DATE:Ljava/lang/String; = "WEATHER_FORECAST_DAY3_DATE"

.field public static final WEATHER_FORECAST_DAY3_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY3_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY3_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY3_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY3_URL:Ljava/lang/String; = "WEATHER_FORECAST_DAY3_URL"

.field public static final WEATHER_FORECAST_DAY3_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_DAY3_WEATHERICON"

.field public static final WEATHER_FORECAST_DAY3_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_DAY3_WEATHERTEXT"

.field public static final WEATHER_FORECAST_DAY4_DATE:Ljava/lang/String; = "WEATHER_FORECAST_DAY4_DATE"

.field public static final WEATHER_FORECAST_DAY4_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY4_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY4_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_DAY4_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_DAY4_URL:Ljava/lang/String; = "WEATHER_FORECAST_DAY4_URL"

.field public static final WEATHER_FORECAST_DAY4_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_DAY4_WEATHERICON"

.field public static final WEATHER_FORECAST_DAY4_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_DAY4_WEATHERTEXT"

.field public static final WEATHER_FORECAST_MAIN_URL:Ljava/lang/String; = "WEATHER_FORECAST_MAIN_URL"

.field public static final WEATHER_FORECAST_NIGHT1_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT1_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT1_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT1_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT1_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT1_WEATHERICON"

.field public static final WEATHER_FORECAST_NIGHT1_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT1_WEATHERTEXT"

.field public static final WEATHER_FORECAST_NIGHT2_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT2_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT2_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT2_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT2_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT2_WEATHERICON"

.field public static final WEATHER_FORECAST_NIGHT2_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT2_WEATHERTEXT"

.field public static final WEATHER_FORECAST_NIGHT3_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT3_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT3_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT3_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT3_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT3_WEATHERICON"

.field public static final WEATHER_FORECAST_NIGHT3_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT3_WEATHERTEXT"

.field public static final WEATHER_FORECAST_NIGHT4_HIGH_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT4_HIGH_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT4_LOW_TEMPERATURE:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT4_LOW_TEMPERATURE"

.field public static final WEATHER_FORECAST_NIGHT4_WEATHERICON:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT4_WEATHERICON"

.field public static final WEATHER_FORECAST_NIGHT4_WEATHERTEXT:Ljava/lang/String; = "WEATHER_FORECAST_NIGHT4_WEATHERTEXT"

.field public static final WEATHER_INDEX:Ljava/lang/String; = "WEATHER_INDEX"

.field public static final WEATHER_TIME:Ljava/lang/String; = "WEATHER_TIME"

.field public static final WEATHER_TODAY_SUNRISE:Ljava/lang/String; = "WEATHER_TODAY_SUNRISE"

.field public static final WEATHER_TODAY_SUNSET:Ljava/lang/String; = "WEATHER_TODAY_SUNSET"

.field public static final WEATHER_TODAY_TEMPERATURE:Ljava/lang/String; = "WEATHER_TODAY_TEMPERATURE"

.field public static final WEATHER_TODAY_URL:Ljava/lang/String; = "WEATHER_TODAY_URL"

.field public static final WEATHER_TODAY_WEATHERICON:Ljava/lang/String; = "WEATHER_TODAY_WEATHERICON"

.field public static final WEATHER_TODAY_WEATHERTEXT:Ljava/lang/String; = "WEATHER_TODAY_WEATHERTEXT"

.field public static final WEATHER_TODAY_WINDDIRECTION:Ljava/lang/String; = "WEATHER_TODAY_WINDDIRECTION"

.field public static final WEATHER_TODAY_WINDSPEED:Ljava/lang/String; = "WEATHER_TODAY_WINDSPEED"

.field public static final WEATHER_UNITS_DIST:Ljava/lang/String; = "WEATHER_UNITS_DIST"

.field public static final WEATHER_UNITS_PREC:Ljava/lang/String; = "WEATHER_UNITS_PREC"

.field public static final WEATHER_UNITS_PRES:Ljava/lang/String; = "WEATHER_UNITS_PRES"

.field public static final WEATHER_UNITS_SPEED:Ljava/lang/String; = "WEATHER_UNITS_SPEED"

.field public static final WEATHER_UNITS_TEMP:Ljava/lang/String; = "WEATHER_UNITS_TEMP"

.field public static final WEATHER_UPDATE_DATE:Ljava/lang/String; = "WEATHER_UPDATE_DATE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://InfoAlarm/INFOALARM_TABLE_WEATHER"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/cradle/Controller$WeatherColumns;->TABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
