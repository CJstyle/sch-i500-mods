.class public Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;
.super Landroid/database/AbstractCursor;
.source "CallLogCursorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    }
.end annotation


# static fields
.field public static final COLUMN_IDX_CONTACT_ID:I = 0x7

.field public static final COLUMN_IDX_COUNT:I = 0x5

.field public static final COLUMN_IDX_DATE:I = 0x3

.field public static final COLUMN_IDX_DURATION:I = 0x9

.field public static final COLUMN_IDX_ID:I = 0x0

.field public static final COLUMN_IDX_LOG_TYPE:I = 0x8

.field public static final COLUMN_IDX_MESSAGE_ID:I = 0xb

.field public static final COLUMN_IDX_NAME:I = 0x1

.field public static final COLUMN_IDX_NAME_REVERSED:I = 0xa

.field public static final COLUMN_IDX_NUMBER:I = 0x2

.field public static final COLUMN_IDX_SEP:I = 0x6

.field public static final COLUMN_IDX_TYPE:I = 0x4

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final COUNT:Ljava/lang/String; = "count"

.field public static final INCORRECT_ID:Ljava/lang/Integer; = null

.field private static final ISSEP:Ljava/lang/String; = "isSep"

.field private static final ONEDAYMILLIS:J = 0x5265c00L


# instance fields
.field private idxDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;",
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

.field private mPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strSeparatorArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
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

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    .line 81
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->INCORRECT_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    .line 75
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    .line 76
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    .line 80
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mPositionMap:Ljava/util/HashMap;

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCurrentYear:I

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCurrentMonth:I

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCurrentDay:I

    .line 110
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    .line 112
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mPositionMap:Ljava/util/HashMap;

    .line 114
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->fetchCallLog(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method private fetchCallLog(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 144
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v11, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 148
    .local v0, count:I
    if-eqz v0, :cond_0

    .line 153
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 154
    .local v1, dataLenth:I
    add-int/lit8 v11, v1, 0x1

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    .line 156
    const/4 v4, 0x1

    .line 157
    .local v4, iSepCount:I
    const/4 v8, 0x0

    .line 158
    .local v8, idxCount:I
    const/4 v10, 0x0

    .line 159
    .local v10, strPrevDay:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 161
    const/4 v7, 0x0

    .line 164
    .local v7, idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    if-gez v11, :cond_4

    .line 202
    :cond_3
    :goto_1
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0

    .line 167
    :cond_4
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 168
    .local v2, date:J
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 169
    .local v6, id:Ljava/lang/Long;
    if-nez v10, :cond_5

    .line 170
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 172
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .end local v7           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    neg-int v11, v4

    invoke-direct {v7, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;-><init>(I)V

    .line 173
    .restart local v7       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iSepCount:I
    .local v5, iSepCount:I
    aput-object v10, v11, v4

    .line 177
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .end local v7           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .local v9, idxCount:I
    invoke-direct {v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;-><init>(I)V

    .line 178
    .restart local v7       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    move v4, v5

    .line 197
    .end local v5           #iSepCount:I
    .restart local v4       #iSepCount:I
    :goto_2
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mPositionMap:Ljava/util/HashMap;

    iget-object v12, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    .line 181
    :cond_5
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_6

    .line 182
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .line 184
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .end local v7           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    neg-int v11, v4

    invoke-direct {v7, v11}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;-><init>(I)V

    .line 185
    .restart local v7       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    add-int/lit8 v5, v4, 0x1

    .end local v4           #iSepCount:I
    .restart local v5       #iSepCount:I
    aput-object v10, v11, v4

    .line 189
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .end local v7           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .restart local v9       #idxCount:I
    invoke-direct {v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;-><init>(I)V

    .line 190
    .restart local v7       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    move v4, v5

    .end local v5           #iSepCount:I
    .restart local v4       #iSepCount:I
    goto :goto_2

    .line 193
    :cond_6
    new-instance v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .end local v7           #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    add-int/lit8 v9, v8, 0x1

    .end local v8           #idxCount:I
    .restart local v9       #idxCount:I
    invoke-direct {v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;-><init>(I)V

    .line 194
    .restart local v7       #idx:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v11, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    .end local v9           #idxCount:I
    .restart local v8       #idxCount:I
    goto :goto_2
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "date"

    .prologue
    const/16 v6, 0xa

    const-string v8, "0"

    const-string v7, "/"

    .line 493
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 494
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 495
    .local v3, year:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 496
    .local v2, month:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 498
    .local v1, day:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 500
    .local v0, dateBuffer:Ljava/lang/StringBuffer;
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 504
    :cond_0
    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 508
    :cond_1
    sget-object v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 510
    if-ge v2, v6, :cond_2

    .line 511
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 514
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    if-ge v1, v6, :cond_3

    .line 516
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 519
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 522
    :cond_4
    sget-object v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 525
    if-ge v1, v6, :cond_5

    .line 526
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 528
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 529
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    if-ge v2, v6, :cond_6

    .line 532
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 535
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 540
    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 541
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    if-ge v2, v6, :cond_8

    .line 543
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 546
    const-string v4, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    if-ge v1, v6, :cond_9

    .line 548
    const-string v4, "0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v0, "CallLogCursorWrapper"

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

    .line 121
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 130
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 131
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

    .line 218
    if-nez p1, :cond_0

    .line 219
    const/4 v0, -0x1

    .line 244
    :goto_0
    return v0

    .line 220
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 221
    goto :goto_0

    .line 222
    :cond_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 223
    goto :goto_0

    .line 224
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    .line 225
    goto :goto_0

    .line 226
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 227
    goto :goto_0

    .line 228
    :cond_4
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 229
    goto :goto_0

    .line 230
    :cond_5
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    const/4 v0, 0x6

    goto :goto_0

    .line 232
    :cond_6
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    const/4 v0, 0x7

    goto :goto_0

    .line 234
    :cond_7
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    const/16 v0, 0x8

    goto :goto_0

    .line 236
    :cond_8
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    const/16 v0, 0x9

    goto :goto_0

    .line 238
    :cond_9
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 240
    :cond_a
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 244
    :cond_b
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .parameter "columnName"

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/database/AbstractCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 266
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 6
    .parameter "column"

    .prologue
    .line 277
    const/4 v3, 0x0

    .line 278
    .local v3, val:I
    const/4 v2, 0x0

    .line 279
    .local v2, temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    const/4 v0, 0x0

    .line 281
    .local v0, idxType:I
    packed-switch p1, :pswitch_data_0

    .line 335
    :pswitch_0
    const/4 v3, 0x0

    .line 337
    :cond_0
    :goto_0
    return v3

    .line 287
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 288
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    iget v4, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 290
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 291
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 298
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 299
    iget v4, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "type"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 301
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    .line 307
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 308
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 309
    iget v4, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 310
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "logtype"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 311
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_0

    .line 317
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 318
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 320
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 321
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget v1, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    .line 322
    .local v1, pos:I
    move v3, v1

    .line 323
    goto/16 :goto_0

    .line 327
    .end local v1           #pos:I
    :pswitch_5
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 328
    .restart local v2       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 329
    iget v4, v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 330
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "contactid"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 331
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto/16 :goto_0

    .line 281
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
    .line 343
    const-wide/16 v1, 0x0

    .line 344
    .local v1, longData:J
    const/4 v0, 0x0

    .line 345
    .local v0, idx:I
    const/4 v3, 0x0

    .line 346
    .local v3, temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    sparse-switch p1, :sswitch_data_0

    .line 377
    :cond_0
    :goto_0
    return-wide v1

    .line 349
    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 350
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 352
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "date"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 353
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 354
    goto :goto_0

    .line 357
    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 358
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 360
    iget v4, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 361
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 362
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    .line 366
    :sswitch_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 367
    .restart local v3       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v5, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 369
    iget v4, v3, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    if-ltz v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v5, "duration"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 371
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_0

    .line 346
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public getPositionById(Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 1
    .parameter "id"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    move-object v0, p0

    .line 136
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->INCORRECT_ID:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "column"

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, idx:I
    const/4 v4, 0x0

    .line 391
    .local v4, temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    packed-switch p1, :pswitch_data_0

    .line 453
    :pswitch_0
    const/4 v3, 0x0

    .line 456
    .local v3, str:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 394
    .end local v3           #str:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 395
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 397
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v6, "name"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 398
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 399
    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v3           #str:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 404
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 406
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v6, "name_reversed"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 407
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    .restart local v3       #str:Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v3           #str:Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 413
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 415
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v6, "number"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 416
    const/4 v3, 0x0

    .line 418
    .restart local v3       #str:Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 419
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 421
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CallLogCursorWrapper"

    const-string v6, " getString CursorIndexOutOfBoundsException Catched "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #str:Ljava/lang/String;
    :pswitch_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 428
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 430
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v6, "messageid"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 431
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 432
    .restart local v3       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 436
    .end local v3           #str:Ljava/lang/String;
    :pswitch_5
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 437
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v6, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 439
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    check-cast v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;

    .line 440
    .restart local v4       #temp:Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;
    iget v2, v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper$IdxData;->idx:I

    .line 442
    .local v2, pos:I
    if-gez v2, :cond_0

    .line 444
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->strSeparatorArray:[Ljava/lang/String;

    neg-int v6, v2

    aget-object v3, v5, v6

    .restart local v3       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 447
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 450
    .restart local v3       #str:Ljava/lang/String;
    goto/16 :goto_0

    .line 391
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
    .line 464
    sparse-switch p1, :sswitch_data_0

    .line 482
    const/4 v1, 0x0

    .line 485
    .local v1, str:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    .line 486
    const/4 v2, 0x1

    .line 488
    :goto_1
    return v2

    .line 466
    .end local v1           #str:Ljava/lang/String;
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 468
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 470
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v3, "name_reversed"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 471
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 472
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 474
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v3, "number"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 475
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 478
    .end local v0           #idx:I
    .end local v1           #str:Ljava/lang/String;
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    const-string v3, "messageid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 479
    .restart local v0       #idx:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 480
    .restart local v1       #str:Ljava/lang/String;
    goto :goto_0

    .line 488
    .end local v0           #idx:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 464
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
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, rc:Z
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->idxDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 209
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorWrapper;->mIndex:I

    .line 210
    const/4 v0, 0x1

    .line 213
    :cond_0
    return v0
.end method
