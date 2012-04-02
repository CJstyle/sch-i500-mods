.class public Lcom/sec/android/app/dialertab/calllog/CallLogCursor;
.super Landroid/database/AbstractCursor;
.source "CallLogCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    }
.end annotation


# static fields
.field public static final COLUMN_IDX_CONTACT_ID:I = 0x7

.field private static final COLUMN_IDX_COUNT:I = 0x5

.field private static final COLUMN_IDX_DATE:I = 0x3

.field public static final COLUMN_IDX_DURATION:I = 0x9

.field private static final COLUMN_IDX_ID:I = 0x0

.field public static final COLUMN_IDX_LOG_TYPE:I = 0x8

.field public static final COLUMN_IDX_MESSAGE_ID:I = 0xb

.field private static final COLUMN_IDX_NAME:I = 0x1

.field public static final COLUMN_IDX_NAME_REVERSED:I = 0xa

.field private static final COLUMN_IDX_NUMBER:I = 0x2

.field public static final COLUMN_IDX_SEP:I = 0x6

.field private static final COLUMN_IDX_TYPE:I = 0x4

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final COUNT:Ljava/lang/String; = "count"

.field private static final ISSEP:Ljava/lang/String; = "isSep"

.field private static final ONEDAYMILLIS:J = 0x5265c00L


# instance fields
.field private idxDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;",
            ">;"
        }
    .end annotation
.end field

.field mCalendar:Ljava/util/Calendar;

.field mCurrentDay:I

.field mCurrentMonth:I

.field mCurrentYear:I

.field mCursor:Landroid/database/Cursor;

.field private mIndex:I

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isSep"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name_reversed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "messageid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArg"

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    .line 74
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 75
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCurrentYear:I

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCurrentMonth:I

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCurrentDay:I

    .line 107
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->fetchCallLog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private fetchCallLog(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .parameter "context"
    .parameter "selection"
    .parameter "selectionArg"

    .prologue
    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    .local v4, resolver:Landroid/content/ContentResolver;
    const/16 v5, 0xa

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "name"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-string v7, "number"

    aput-object v7, v6, v5

    const/4 v5, 0x3

    const-string v7, "date"

    aput-object v7, v6, v5

    const/4 v5, 0x4

    const-string v7, "type"

    aput-object v7, v6, v5

    const/4 v5, 0x5

    const-string v7, "contactid"

    aput-object v7, v6, v5

    const/4 v5, 0x6

    const-string v7, "logtype"

    aput-object v7, v6, v5

    const/4 v5, 0x7

    const-string v7, "duration"

    aput-object v7, v6, v5

    const/16 v5, 0x8

    const-string v7, "name_reversed"

    aput-object v7, v6, v5

    const/16 v5, 0x9

    const-string v7, "messageid"

    aput-object v7, v6, v5

    .line 146
    .local v6, projection:[Ljava/lang/String;
    if-nez p2, :cond_1

    .line 147
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    .line 162
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 221
    .end local v6           #projection:[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 155
    .restart local v6       #projection:[Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "date DESC"

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 165
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 166
    .local v10, count:I
    if-eqz v10, :cond_0

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 172
    .local v11, dataLenth:I
    add-int/lit8 v5, v11, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    const-string v6, "date"

    .end local v6           #projection:[Ljava/lang/String;
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 176
    .local v19, idxDate:I
    const/4 v14, 0x1

    .line 177
    .local v14, iSepCount:I
    const/16 v17, 0x0

    .line 178
    .local v17, idxCount:I
    const/16 v20, 0x0

    .line 179
    .local v20, strPrevDay:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const/16 v16, 0x0

    .line 185
    .local v16, idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 186
    .local v12, date:J
    if-nez v20, :cond_5

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 189
    new-instance v16, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .end local v16           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    neg-int v5, v14

    move-object/from16 v0, v16

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;-><init>(I)V

    .line 190
    .restart local v16       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    move-object v5, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14           #iSepCount:I
    .local v15, iSepCount:I
    aput-object v20, v5, v14

    .line 194
    new-instance v16, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .end local v16           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    add-int/lit8 v18, v17, 0x1

    .end local v17           #idxCount:I
    .local v18, idxCount:I
    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;-><init>(I)V

    .line 195
    .restart local v16       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v18

    .end local v18           #idxCount:I
    .restart local v17       #idxCount:I
    move v14, v15

    .line 216
    .end local v15           #iSepCount:I
    .restart local v14       #iSepCount:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    goto/16 :goto_1

    .line 198
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 201
    new-instance v16, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .end local v16           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    neg-int v5, v14

    move-object/from16 v0, v16

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;-><init>(I)V

    .line 202
    .restart local v16       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    move-object v5, v0

    add-int/lit8 v15, v14, 0x1

    .end local v14           #iSepCount:I
    .restart local v15       #iSepCount:I
    aput-object v20, v5, v14

    .line 206
    new-instance v16, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .end local v16           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    add-int/lit8 v18, v17, 0x1

    .end local v17           #idxCount:I
    .restart local v18       #idxCount:I
    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;-><init>(I)V

    .line 207
    .restart local v16       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v18

    .end local v18           #idxCount:I
    .restart local v17       #idxCount:I
    move v14, v15

    .end local v15           #iSepCount:I
    .restart local v14       #iSepCount:I
    goto :goto_2

    .line 210
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 211
    new-instance v16, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .end local v16           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    add-int/lit8 v18, v17, 0x1

    .end local v17           #idxCount:I
    .restart local v18       #idxCount:I
    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;-><init>(I)V

    .line 212
    .restart local v16       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v17, v18

    .end local v18           #idxCount:I
    .restart local v17       #idxCount:I
    goto/16 :goto_2
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "date"

    .prologue
    const/16 v6, 0xa

    const-string v8, "0"

    const-string v7, "/"

    .line 507
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 508
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 509
    .local v3, year:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 510
    .local v2, month:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 512
    .local v1, day:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 514
    .local v0, dateBuffer:Ljava/lang/StringBuffer;
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 518
    :cond_0
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 522
    :cond_1
    sget-object v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 524
    if-ge v2, v6, :cond_2

    .line 525
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 528
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    if-ge v1, v6, :cond_3

    .line 530
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 533
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 536
    :cond_4
    sget-object v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 539
    if-ge v1, v6, :cond_5

    .line 540
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 543
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    if-ge v2, v6, :cond_6

    .line 546
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 549
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 554
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 555
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    if-ge v2, v6, :cond_8

    .line 557
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 560
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    if-ge v1, v6, :cond_9

    .line 562
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "CallLogCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    .line 126
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 127
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "columnName"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 236
    if-nez p1, :cond_0

    .line 237
    const/4 v0, -0x1

    .line 262
    :goto_0
    return v0

    .line 238
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 239
    goto :goto_0

    .line 240
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 241
    goto :goto_0

    .line 242
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    .line 243
    goto :goto_0

    .line 244
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 245
    goto :goto_0

    .line 246
    :cond_4
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 247
    goto :goto_0

    .line 248
    :cond_5
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 249
    const/4 v0, 0x6

    goto :goto_0

    .line 250
    :cond_6
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 251
    const/4 v0, 0x7

    goto :goto_0

    .line 252
    :cond_7
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 253
    const/16 v0, 0x8

    goto :goto_0

    .line 254
    :cond_8
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 255
    const/16 v0, 0x9

    goto :goto_0

    .line 256
    :cond_9
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 257
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 258
    :cond_a
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 259
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 262
    :cond_b
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 284
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 6
    .parameter "column"

    .prologue
    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    const/4 v0, 0x0

    .line 299
    .local v0, idxType:I
    packed-switch p1, :pswitch_data_0

    .line 349
    :pswitch_0
    const/4 v3, 0x0

    .line 351
    .local v3, val:I
    :goto_0
    return v3

    .line 305
    .end local v3           #val:I
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 306
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 308
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 309
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 310
    .restart local v3       #val:I
    goto :goto_0

    .line 314
    .end local v3           #val:I
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 315
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 318
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 319
    .restart local v3       #val:I
    goto :goto_0

    .line 323
    .end local v3           #val:I
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 324
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 326
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "logtype"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 327
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 328
    .restart local v3       #val:I
    goto :goto_0

    .line 332
    .end local v3           #val:I
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 333
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 336
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget v1, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    .line 337
    .local v1, pos:I
    move v3, v1

    .line 338
    .restart local v3       #val:I
    goto :goto_0

    .line 342
    .end local v1           #pos:I
    .end local v3           #val:I
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 343
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 345
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "contactid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 346
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 347
    .restart local v3       #val:I
    goto/16 :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public getLong(I)J
    .locals 6
    .parameter "column"

    .prologue
    .line 357
    const-wide/16 v1, 0x0

    .line 358
    .local v1, longData:J
    const/4 v0, 0x0

    .line 359
    .local v0, idx:I
    const/4 v3, 0x0

    .line 360
    .local v3, temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    sparse-switch p1, :sswitch_data_0

    .line 391
    :cond_0
    :goto_0
    return-wide v1

    .line 363
    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 364
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 366
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "date"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 367
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 368
    goto :goto_0

    .line 371
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 372
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 374
    iget v4, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 375
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 376
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    .line 380
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 381
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 383
    iget v4, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "duration"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 385
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "column"

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, idx:I
    const/4 v4, 0x0

    .line 405
    .local v4, temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    packed-switch p1, :pswitch_data_0

    .line 467
    :pswitch_0
    const/4 v3, 0x0

    .line 470
    .local v3, str:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 408
    .end local v3           #str:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 409
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 412
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0

    .line 417
    .end local v3           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 418
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 420
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v6, "name_reversed"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 421
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 422
    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0

    .line 426
    .end local v3           #str:Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 427
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 429
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v6, "number"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 430
    const/4 v3, 0x0

    .line 432
    .restart local v3       #str:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 433
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 435
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CallLogCursor"

    const-string v6, " getString CursorIndexOutOfBoundsException Catched "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #str:Ljava/lang/String;
    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 442
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 444
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v6, "messageid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 445
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 446
    .restart local v3       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 450
    .end local v3           #str:Ljava/lang/String;
    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 451
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 453
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;

    .line 454
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;
    iget v2, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursor$IdxData;->idx:I

    .line 456
    .local v2, pos:I
    if-gez v2, :cond_0

    .line 458
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->strSeparatorArray:[Ljava/lang/String;

    neg-int v6, v2

    aget-object v3, v5, v6

    .restart local v3       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 461
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 464
    .restart local v3       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 4
    .parameter "column"

    .prologue
    .line 478
    sparse-switch p1, :sswitch_data_0

    .line 496
    const/4 v1, 0x0

    .line 499
    .local v1, str:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 500
    const/4 v2, 0x1

    .line 502
    :goto_1
    return v2

    .line 480
    .end local v1           #str:Ljava/lang/String;
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, "name_reversed"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 485
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 488
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, "number"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 489
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 490
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 492
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    const-string v3, "messageid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 493
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 502
    .end local v0           #idx:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_3
    .end sparse-switch
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, rc:Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 227
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursor;->mIndex:I

    .line 228
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0
.end method
