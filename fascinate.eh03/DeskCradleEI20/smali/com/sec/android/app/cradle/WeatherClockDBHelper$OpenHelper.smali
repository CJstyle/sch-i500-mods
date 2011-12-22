.class Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeatherClockDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/cradle/WeatherClockDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 425
    const-string v0, "WeatherClock"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 426
    iput-object p1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->mContext:Landroid/content/Context;

    .line 427
    return-void
.end method

.method private insertDefaultCities(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 447
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 430
    const-string v0, "create table MY_WEATHER_LIST(NAME varchar(128),LOCATION varchar(128),SUMMER_TIME char(1),MAIN_DISPLAY char(1));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 431
    const-string v0, "create table MY_WEATHER_MAIN_INFO(LOCATION varchar(128),HIGHTEMP varchar(128),LOWTEMP varchar(128),ICON_NUM varchar(128),UPDATE_DATE varchar(128));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    const-string v0, "create table MY_WEATHER_SETTING_INFO(UNIT char(1),AUTO_REFRESH varchar(128));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 433
    const-string v0, "insert into MY_WEATHER_SETTING_INFO values (\'C\',\'None\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->insertDefaultCities(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 435
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 467
    return-void
.end method
