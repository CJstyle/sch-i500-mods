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
.field private static final DEFAULT_DATA_LIST_1:[Ljava/lang/String;


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
