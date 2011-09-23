.class public Lcom/sec/android/app/cradle/WeatherClockDBHelper;
.super Ljava/lang/Object;
.source "WeatherClockDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;
    }
.end annotation


# static fields
.field private static final CREATE_SETTING_INFO_TABLE:Ljava/lang/String; = "create table MY_WEATHER_SETTING_INFO(UNIT char(1),AUTO_REFRESH varchar(128));"

.field private static final CREATE_WEATHER_LIST_TABLE:Ljava/lang/String; = "create table MY_WEATHER_LIST(NAME varchar(128),LOCATION varchar(128),SUMMER_TIME char(1),MAIN_DISPLAY char(1));"

.field private static final CREATE_WEATHER_MAIN_INFO_TABLE:Ljava/lang/String; = "create table MY_WEATHER_MAIN_INFO(LOCATION varchar(128),HIGHTEMP varchar(128),LOWTEMP varchar(128),ICON_NUM varchar(128),UPDATE_DATE varchar(128));"

.field private static final DB_NAME:Ljava/lang/String; = "WeatherClock"

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_DATA_LIST_1:[Ljava/lang/String; = null

.field private static final WEATHER_LIST_TABLE:Ljava/lang/String; = "MY_WEATHER_LIST"

.field private static final WEATHER_MAIN_INFO_TABLE:Ljava/lang/String; = "MY_WEATHER_MAIN_INFO"

.field private static final WEATHER_SETTING_INFO_TABLE:Ljava/lang/String; = "MY_WEATHER_SETTING_INFO"


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "0"

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Seoul"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ASI|KR|KS013|SEOUL"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v2, "-1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Last Updated : 2010-01-01 12:00"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->DEFAULT_DATA_LIST_1:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-direct {v0, p1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    .line 40
    return-void
.end method


# virtual methods
.method public deleteRows(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, deleteItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string v12, "NAME=\'"

    const-string v1, "MY_WEATHER_LIST"

    const-string v10, "\'"

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 232
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "LOCATION"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME=\'"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 234
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MY_WEATHER_MAIN_INFO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCATION=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "MY_WEATHER_LIST"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NAME=\'"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 240
    .end local v9           #mCursor:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 241
    return-void
.end method

.method public getAllNames()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 409
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v8, allNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "NAME"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 411
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 418
    return-object v8
.end method

.method public getAutoRefresh()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "AUTO_REFRESH"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 59
    .local v9, mCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 60
    .local v8, autoRefresh:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 63
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 65
    return-object v8
.end method

.method public getCityCount()I
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 117
    .local v10, mCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 118
    .local v9, count:I
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 120
    return v9
.end method

.method public getDefaultCityName()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 282
    const/4 v8, 0x0

    .line 283
    .local v8, defaultCityName:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "NAME"

    aput-object v3, v2, v10

    const-string v3, "MAIN_DISPLAY=\'O\'"

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 284
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 287
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 289
    return-object v8
.end method

.method public getListItems()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/WeatherClockListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 387
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v10, listItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockListItem;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "MAIN_DISPLAY"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 389
    .local v11, mCursor:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    :cond_0
    const-string v13, ""

    .line 392
    .local v13, name:Ljava/lang/String;
    const-string v12, ""

    .line 393
    .local v12, main_display:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    .line 394
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 395
    const/4 v9, 0x1

    .local v9, j:I
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 396
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 395
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    .line 398
    :cond_1
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockListItem;

    invoke-direct {v0, v13, v12}, Lcom/sec/android/app/cradle/WeatherClockListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 400
    .end local v9           #j:I
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    .end local v8           #i:I
    .end local v12           #main_display:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 404
    return-object v10
.end method

.method public getLocationList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v8, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_MAIN_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "LOCATION"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 46
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 53
    return-object v8
.end method

.method public getLocationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cityName"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "LOCATION"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 295
    .local v9, mCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 296
    .local v8, locationName:Ljava/lang/String;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 299
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 301
    return-object v8
.end method

.method public getMainInfo(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "locationName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 306
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v8, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_MAIN_INFO"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "HIGHTEMP"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "LOWTEMP"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "UPDATE_DATE"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "ICON_NUM"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "LOCATION"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCATION=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 308
    .local v10, mCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 310
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 313
    .end local v9           #i:I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 315
    return-object v8
.end method

.method public getSummerTimeCheck(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cityName"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SUMMER_TIME"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 271
    .local v8, mCursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 272
    .local v9, summerTime:Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 275
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 277
    return-object v9
.end method

.method public insertWeatherMainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "name"
    .parameter "location"
    .parameter "highTemp"
    .parameter "lowTemp"
    .parameter "icon_Num"
    .parameter "update_Date"

    .prologue
    .line 319
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MY_WEATHER_LIST"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "MAIN_DISPLAY"

    aput-object v7, v5, v6

    const-string v6, "MAIN_DISPLAY=\'O\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 322
    .local v12, mCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v11, listValues:Landroid/content/ContentValues;
    const-string v3, "NAME"

    invoke-virtual {v11, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "LOCATION"

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "SUMMER_TIME"

    const-string v4, "X"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v3, "MAIN_DISPLAY"

    const-string v4, "X"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :goto_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v13, mainInfoValues:Landroid/content/ContentValues;
    const-string v3, "LOCATION"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v3, "HIGHTEMP"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v3, "LOWTEMP"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v3, "ICON_NUM"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v3, "UPDATE_DATE"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MY_WEATHER_LIST"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 343
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MY_WEATHER_MAIN_INFO"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 344
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 345
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 346
    return-void

    .line 330
    .end local v11           #listValues:Landroid/content/ContentValues;
    .end local v13           #mainInfoValues:Landroid/content/ContentValues;
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 331
    .restart local v11       #listValues:Landroid/content/ContentValues;
    const-string v3, "NAME"

    invoke-virtual {v11, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "LOCATION"

    move-object v0, v11

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v3, "SUMMER_TIME"

    const-string v4, "X"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v3, "MAIN_DISPLAY"

    const-string v4, "O"

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMaximum()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    new-array v2, v12, [Ljava/lang/String;

    const-string v4, "NAME"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 101
    .local v10, mCursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 102
    .local v9, count:I
    const/16 v0, 0xa

    if-lt v9, v0, :cond_0

    .line 103
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v11

    .line 110
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v12

    .line 110
    goto :goto_0
.end method

.method public listCountCheck()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "NAME"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 71
    .local v8, mCursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v10

    .line 79
    :goto_0
    return v0

    .line 77
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v9

    .line 79
    goto :goto_0
.end method

.method public locationCheck(Ljava/lang/String;)Z
    .locals 11
    .parameter "location"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "NAME"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCATION=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 86
    .local v8, mCursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v10

    .line 94
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v9

    .line 94
    goto :goto_0
.end method

.method public mainInfoLocationCheck(Ljava/lang/String;)Z
    .locals 11
    .parameter "locationName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_MAIN_INFO"

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "LOCATION"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCATION=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 362
    .local v8, mCursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v10

    .line 370
    :goto_0
    return v0

    .line 368
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    move v0, v9

    .line 370
    goto :goto_0
.end method

.method public selectAllCityorSummerTime()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 167
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v11, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "SUMMER_TIME"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 169
    .local v14, mCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 170
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    :cond_0
    const-string v10, ""

    .line 173
    .local v10, city:Ljava/lang/String;
    const-string v9, ""

    .line 174
    .local v9, check:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 175
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    const/4 v13, 0x1

    .local v13, j:I
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v13, v0, :cond_1

    .line 177
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 176
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 179
    :cond_1
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;

    invoke-direct {v0, v10, v9}, Lcom/sec/android/app/cradle/WeatherClockMenuSetDSTRow;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v12, v12, 0x2

    goto :goto_0

    .line 181
    .end local v13           #j:I
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    .end local v9           #check:Ljava/lang/String;
    .end local v10           #city:Ljava/lang/String;
    .end local v12           #i:I
    :cond_3
    if-eqz v14, :cond_4

    .line 185
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 187
    return-object v11
.end method

.method public selectAllCityordefault()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/WeatherClockListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 245
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v11, cityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockListItem;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "NAME"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "MAIN_DISPLAY"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 247
    .local v14, mCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 248
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    :cond_0
    const-string v10, ""

    .line 251
    .local v10, city:Ljava/lang/String;
    const-string v9, ""

    .line 252
    .local v9, check:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v12, v0, :cond_2

    .line 253
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 254
    const/4 v13, 0x1

    .local v13, j:I
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v13, v0, :cond_1

    .line 255
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 254
    add-int/lit8 v13, v13, 0x2

    goto :goto_1

    .line 257
    :cond_1
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockListItem;

    invoke-direct {v0, v10, v9}, Lcom/sec/android/app/cradle/WeatherClockListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v12, v12, 0x2

    goto :goto_0

    .line 259
    .end local v13           #j:I
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    .end local v9           #check:Ljava/lang/String;
    .end local v10           #city:Ljava/lang/String;
    .end local v12           #i:I
    :cond_3
    if-eqz v14, :cond_4

    .line 263
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 265
    return-object v11
.end method

.method public selectAllFrom()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/WeatherClockInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v8, allItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_LIST"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "NAME"

    aput-object v4, v2, v10

    const-string v4, "LOCATION"

    aput-object v4, v2, v11

    const-string v4, "SUMMER_TIME"

    aput-object v4, v2, v12

    const-string v4, "MAIN_DISPLAY"

    aput-object v4, v2, v13

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 219
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    new-instance v0, Lcom/sec/android/app/cradle/WeatherClockInfo;

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/cradle/WeatherClockInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 227
    return-object v8
.end method

.method public selectSettingValues()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v10, settingValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "UNIT"

    aput-object v4, v2, v11

    const-string v4, "AUTO_REFRESH"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 127
    .local v9, mCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 133
    return-object v10
.end method

.method public selectUnitValue()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 376
    const/4 v9, 0x0

    .line 377
    .local v9, unitValue:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "MY_WEATHER_SETTING_INFO"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "UNIT"

    aput-object v4, v2, v10

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 378
    .local v8, mCursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 380
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 382
    return-object v9
.end method

.method public updateChangeOrder(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/cradle/WeatherClockInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/cradle/WeatherClockInfo;>;"
    const/4 v4, 0x0

    const-string v5, "MY_WEATHER_LIST"

    .line 202
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 203
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MY_WEATHER_LIST"

    invoke-virtual {v2, v5, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 204
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v1, vals:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 206
    const-string v3, "NAME"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/WeatherClockInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockInfo;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "LOCATION"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/WeatherClockInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v3, "SUMMER_TIME"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/WeatherClockInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockInfo;->getDefaultlocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v3, "MAIN_DISPLAY"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/WeatherClockInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockInfo;->getSummertime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MY_WEATHER_LIST"

    invoke-virtual {v2, v5, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 213
    return-void
.end method

.method public updateDefaultLocation(Ljava/lang/String;)V
    .locals 7
    .parameter "cityName"

    .prologue
    const/4 v5, 0x0

    const-string v6, "MY_WEATHER_LIST"

    const-string v4, "MAIN_DISPLAY"

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 192
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 193
    .local v1, vals:Landroid/content/ContentValues;
    const-string v2, "MAIN_DISPLAY"

    const-string v2, "X"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MY_WEATHER_LIST"

    invoke-virtual {v2, v6, v1, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v0, args:Landroid/content/ContentValues;
    const-string v2, "MAIN_DISPLAY"

    const-string v2, "O"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MY_WEATHER_LIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAME=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    iget-object v2, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v2}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 199
    return-void
.end method

.method public updateSummerTime(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, arr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const-string v5, "SUMMER_TIME"

    const-string v7, "MY_WEATHER_LIST"

    .line 153
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v2, vals:Landroid/content/ContentValues;
    const-string v3, "SUMMER_TIME"

    const-string v3, "X"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "MY_WEATHER_LIST"

    invoke-virtual {v3, v7, v2, v6, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, args:Landroid/content/ContentValues;
    const-string v3, "SUMMER_TIME"

    const-string v3, "O"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 160
    iget-object v4, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "MY_WEATHER_LIST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NAME=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v7, v0, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v3}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 163
    return-void
.end method

.method public updateUnit(Ljava/lang/String;)V
    .locals 4
    .parameter "unit"

    .prologue
    const/4 v3, 0x0

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v0, vals:Landroid/content/ContentValues;
    const-string v1, "UNIT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MY_WEATHER_SETTING_INFO"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 150
    return-void
.end method

.method public updateUpdate(Ljava/lang/String;)V
    .locals 4
    .parameter "update_period"

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v0, vals:Landroid/content/ContentValues;
    const-string v1, "AUTO_REFRESH"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MY_WEATHER_SETTING_INFO"

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 142
    return-void
.end method

.method public updateWeatherMainInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "location"
    .parameter "highTemp"
    .parameter "lowTemp"
    .parameter "icon_Num"
    .parameter "update_Date"

    .prologue
    .line 349
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 350
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 351
    .local v0, updateValues:Landroid/content/ContentValues;
    const-string v1, "HIGHTEMP"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "LOWTEMP"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "ICON_NUM"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "UPDATE_DATE"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "MY_WEATHER_MAIN_INFO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOCATION=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/cradle/WeatherClockDBHelper;->mDbOpenHelper:Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/cradle/WeatherClockDBHelper$OpenHelper;->close()V

    .line 357
    return-void
.end method
