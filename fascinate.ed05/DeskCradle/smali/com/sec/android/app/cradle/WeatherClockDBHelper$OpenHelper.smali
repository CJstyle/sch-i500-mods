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

.method private insertDefaultCity(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "db"
    .parameter "name"
    .parameter "location"
    .parameter "isMain"

    .prologue
    const/4 v5, 0x0

    const-string v8, "X"

    const-string v7, "LOCATION"

    const-string v6, "0"

    .line 450
    if-eqz p4, :cond_0

    const-string v3, "O"

    move-object v1, v3

    .line 452
    .local v1, main:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v0, listValues:Landroid/content/ContentValues;
    const-string v3, "NAME"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v3, "LOCATION"

    invoke-virtual {v0, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v3, "SUMMER_TIME"

    const-string v4, "X"

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v3, "MAIN_DISPLAY"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v3, "MY_WEATHER_LIST"

    invoke-virtual {p1, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 459
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v2, mainInfoValues:Landroid/content/ContentValues;
    const-string v3, "LOCATION"

    invoke-virtual {v2, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v3, "HIGHTEMP"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v3, "LOWTEMP"

    const-string v4, "0"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v3, "ICON_NUM"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "UPDATE_DATE"

    const-string v4, "Last Updated : 2010-01-01 12:00"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v3, "MY_WEATHER_MAIN_INFO"

    invoke-virtual {p1, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 466
    return-void

    .line 450
    .end local v0           #listValues:Landroid/content/ContentValues;
    .end local v1           #main:Ljava/lang/String;
    .end local v2           #mainInfoValues:Landroid/content/ContentValues;
    :cond_0
    const-string v3, "X"

    move-object v1, v8

    goto :goto_0
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
