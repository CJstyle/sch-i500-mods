.class public Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CallLogDetailCursorAdapter.java"


# static fields
.field private static final ONEDAYMILLIS:J = 0x5265c00L

.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# instance fields
.field idxCallType:I

.field idxDate:I

.field idxDuration:I

.field idxLogType:I

.field idxMessageId:I

.field idxNumber:I

.field mCalendar:Ljava/util/Calendar;

.field mContext:Landroid/content/Context;

.field mCurrentDay:I

.field mCurrentMonth:I

.field mCurrentYear:I

.field mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 55
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mContext:Landroid/content/Context;

    .line 67
    const-string v0, "date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxDate:I

    .line 68
    const-string v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxCallType:I

    .line 69
    const-string v0, "duration"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxDuration:I

    .line 70
    const-string v0, "number"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxNumber:I

    .line 71
    const-string v0, "logtype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxLogType:I

    .line 72
    const-string v0, "messageid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxMessageId:I

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCurrentYear:I

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCurrentMonth:I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCurrentDay:I

    .line 80
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 81
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "date"

    .prologue
    .line 171
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 172
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 173
    .local v4, min:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 174
    .local v0, ampm:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 175
    .local v6, year:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 176
    .local v5, month:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 178
    .local v2, day:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v1, dateBuffer:Ljava/lang/StringBuffer;
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :goto_0
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 250
    sget-boolean v7, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    if-eqz v7, :cond_c

    .line 252
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 253
    .local v3, hour:I
    const/16 v7, 0xa

    if-ge v3, v7, :cond_0

    .line 254
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 257
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const/16 v7, 0xa

    if-ge v4, v7, :cond_1

    .line 259
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 262
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 197
    .end local v3           #hour:I
    :cond_2
    const-wide/32 v7, 0x5265c00

    add-long/2addr v7, p2

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :cond_3
    sget-object v7, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v8, "MM-dd-yyyy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 205
    const/16 v7, 0xa

    if-ge v5, v7, :cond_4

    .line 206
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 209
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    const/16 v7, 0xa

    if-ge v2, v7, :cond_5

    .line 211
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 214
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 217
    :cond_6
    sget-object v7, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v8, "dd-MM-yyyy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 220
    const/16 v7, 0xa

    if-ge v2, v7, :cond_7

    .line 221
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 224
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const/16 v7, 0xa

    if-ge v5, v7, :cond_8

    .line 227
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :cond_8
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 230
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 235
    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 236
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const/16 v7, 0xa

    if-ge v5, v7, :cond_a

    .line 238
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    :cond_a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 241
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const/16 v7, 0xa

    if-ge v2, v7, :cond_b

    .line 243
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 266
    :cond_c
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 269
    .restart local v3       #hour:I
    if-nez v3, :cond_f

    .line 270
    const/16 v3, 0xc

    .line 277
    :cond_d
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    const/16 v7, 0xa

    if-ge v4, v7, :cond_e

    .line 280
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 283
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    if-nez v0, :cond_10

    .line 285
    const-string v7, "AM"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 274
    :cond_f
    const/16 v7, 0xa

    if-ge v3, v7, :cond_d

    .line 275
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 287
    :cond_10
    const-string v7, "PM"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    .line 295
    const-wide/16 v1, 0x0

    .line 296
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 297
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 299
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 300
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 301
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 303
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 304
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 305
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 307
    :cond_1
    move-wide v5, p1

    .line 310
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 311
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 312
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 315
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 318
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 321
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 324
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 19
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 86
    if-nez p3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const v16, 0x7f060041

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 91
    .local v9, dateText:Landroid/widget/TextView;
    const v16, 0x7f060043

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 92
    .local v12, durationText:Landroid/widget/TextView;
    const v16, 0x7f060042

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 93
    .local v14, numberText:Landroid/widget/TextView;
    const v16, 0x7f06003f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 94
    .local v6, callTypeImageView:Landroid/widget/ImageView;
    const v16, 0x7f060040

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 96
    .local v4, callLogTypeImageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxDate:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 97
    .local v7, date:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxDuration:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 98
    .local v10, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxCallType:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 99
    .local v5, callType:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxNumber:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, strNumber:Ljava/lang/String;
    const-string v16, "-1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090030

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 111
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    packed-switch v5, :pswitch_data_0

    .line 126
    :goto_2
    const-string v16, "CallLog"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "idxLogType == "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxLogType:I

    move/from16 v18, v0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxLogType:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x320

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 128
    const v16, 0x7f020100

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxLogType:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x320

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxMessageId:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 136
    .local v13, message_id:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    const-string v16, "CallLog"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Message Id : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v16, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 103
    .end local v13           #message_id:Ljava/lang/String;
    :cond_3
    const-string v16, "-2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090031

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 106
    :cond_4
    const-string v16, "-3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f090032

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_1

    .line 117
    :pswitch_0
    const v16, 0x7f0200b0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 120
    :pswitch_1
    const v16, 0x7f0200a6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 123
    :pswitch_2
    const v16, 0x7f02009b

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 129
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->idxLogType:I

    move/from16 v16, v0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 130
    const v16, 0x7f0200ee

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 132
    :cond_6
    const v16, 0x7f0200f0

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    if-eqz p2, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogDetailCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 160
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, view:Landroid/view/View;
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 167
    return-object v0
.end method
