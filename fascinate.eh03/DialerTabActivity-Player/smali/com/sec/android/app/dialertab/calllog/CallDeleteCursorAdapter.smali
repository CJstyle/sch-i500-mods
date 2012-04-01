.class public Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "CallDeleteCursorAdapter.java"


# static fields
.field public static final PAYPHONE_NUMBER:Ljava/lang/String; = "-3"

.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# instance fields
.field idxCallType:I

.field idxContactId:I

.field idxDate:I

.field idxLogId:I

.field idxLogType:I

.field idxName:I

.field idxNameReversed:I

.field idxNumber:I

.field mCalendar:Ljava/util/Calendar;

.field mContext:Landroid/content/Context;

.field mIsReversedName:Z

.field mPhotoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 62
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mIsReversedName:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mContext:Landroid/content/Context;

    .line 72
    const-string v0, "number"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxNumber:I

    .line 73
    const-string v0, "date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxDate:I

    .line 74
    const-string v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxCallType:I

    .line 75
    const-string v0, "logtype"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxLogType:I

    .line 76
    const-string v0, "name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxName:I

    .line 77
    const-string v0, "name_reversed"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxNameReversed:I

    .line 78
    const-string v0, "contactid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxContactId:I

    .line 79
    const-string v0, "cid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxLogId:I

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 85
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mPhotoMap:Ljava/util/HashMap;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mIsReversedName:Z

    .line 88
    return-void

    :cond_0
    move v0, v3

    .line 87
    goto :goto_0
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "date"

    .prologue
    const/16 v6, 0xa

    const-string v9, ":"

    const-string v8, " "

    const-string v7, "0"

    .line 269
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 270
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 271
    .local v3, min:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 273
    .local v0, ampm:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 275
    .local v1, dateBuffer:Ljava/lang/StringBuffer;
    sget-boolean v4, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    if-eqz v4, :cond_2

    .line 277
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 278
    .local v2, hour:I
    if-ge v2, v6, :cond_0

    .line 279
    const-string v4, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 282
    const-string v4, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    if-ge v3, v6, :cond_1

    .line 284
    const-string v4, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 287
    const-string v4, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 291
    .end local v2           #hour:I
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 294
    .restart local v2       #hour:I
    if-nez v2, :cond_5

    .line 295
    const/16 v2, 0xc

    .line 302
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 303
    const-string v4, ":"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    if-ge v3, v6, :cond_4

    .line 305
    const-string v4, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 308
    const-string v4, " "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    if-nez v0, :cond_6

    .line 310
    const-string v4, "AM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
    :cond_5
    if-ge v2, v6, :cond_3

    .line 300
    const-string v4, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 312
    :cond_6
    const-string v4, "PM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 92
    if-nez p3, :cond_0

    .line 231
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v7, 0x6

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-gez v7, :cond_2

    .line 96
    const v7, 0x7f060044

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 97
    .local v12, Seperate:Landroid/widget/TextView;
    if-eqz v12, :cond_1

    .line 98
    const/4 v7, 0x6

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_1
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 103
    .local v19, iTag:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    const/4 v7, -0x1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto :goto_0

    .line 107
    .end local v12           #Seperate:Landroid/widget/TextView;
    .end local v19           #iTag:Ljava/lang/Integer;
    :cond_2
    const v7, 0x7f06002f

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 108
    .local v26, photo:Landroid/widget/ImageView;
    const v7, 0x7f0600d3

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 109
    .local v22, mainText:Landroid/widget/TextView;
    const v7, 0x7f0600d5

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 110
    .local v29, subText:Landroid/widget/TextView;
    const v7, 0x7f0600d6

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 111
    .local v30, timeText:Landroid/widget/TextView;
    const v7, 0x7f060036

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 113
    .local v14, callIndiImage:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 114
    .local v23, myResources:Landroid/content/res/Resources;
    const/16 v20, 0x0

    .line 116
    .local v20, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxLogType:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_7

    .line 117
    const v7, 0x7f0200ee

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 120
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v22

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, v20

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxNumber:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 125
    .local v25, number:Ljava/lang/String;
    const-string v7, "-1"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 126
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 133
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxDate:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 134
    .local v16, date:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxCallType:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 136
    .local v18, iCallType:I
    const/16 v24, 0x0

    .line 137
    .local v24, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mIsReversedName:Z

    move v7, v0

    if-eqz v7, :cond_a

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxName:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 142
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxContactId:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 143
    .local v11, ContactId:I
    const/4 v13, 0x1

    .line 145
    .local v13, bNoImg:Z
    if-eqz v11, :cond_4

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mPhotoMap:Ljava/util/HashMap;

    move-object v7, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mPhotoMap:Ljava/util/HashMap;

    move-object v7, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/graphics/Bitmap;

    .line 148
    .local v27, photoBm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    const/4 v13, 0x0

    .line 176
    .end local v27           #photoBm:Landroid/graphics/Bitmap;
    :cond_4
    :goto_4
    if-eqz v13, :cond_5

    .line 178
    const v7, 0x7f0200ea

    move-object/from16 v0, v26

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :cond_5
    if-eqz v24, :cond_e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_e

    .line 185
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 205
    const v7, 0x7f09002f

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 206
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    packed-switch v18, :pswitch_data_0

    .line 224
    :goto_6
    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 227
    .restart local v19       #iTag:Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxLogId:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    goto/16 :goto_0

    .line 119
    .end local v11           #ContactId:I
    .end local v13           #bNoImg:Z
    .end local v16           #date:J
    .end local v18           #iCallType:I
    .end local v19           #iTag:Ljava/lang/Integer;
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #number:Ljava/lang/String;
    :cond_7
    const v7, 0x7f0200f0

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_1

    .line 127
    .restart local v25       #number:Ljava/lang/String;
    :cond_8
    const-string v7, "-2"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090031

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_2

    .line 129
    :cond_9
    const-string v7, "-3"

    move-object/from16 v0, v25

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090032

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_2

    .line 140
    .restart local v16       #date:J
    .restart local v18       #iCallType:I
    .restart local v24       #name:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->idxNameReversed:I

    move v7, v0

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_3

    .line 151
    .restart local v11       #ContactId:I
    .restart local v13       #bNoImg:Z
    :cond_b
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 152
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 153
    .local v5, resolver:Landroid/content/ContentResolver;
    sget-object v7, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->CONTACT_PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 155
    .local v15, contactCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_4

    .line 156
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eqz v7, :cond_c

    .line 157
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 159
    const/4 v7, 0x1

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 161
    .local v28, photoId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide v8, v0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 163
    .restart local v27       #photoBm:Landroid/graphics/Bitmap;
    if-eqz v27, :cond_d

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mPhotoMap:Ljava/util/HashMap;

    move-object v7, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual/range {v26 .. v27}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    const/4 v13, 0x0

    .line 172
    .end local v27           #photoBm:Landroid/graphics/Bitmap;
    .end local v28           #photoId:I
    :cond_c
    :goto_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 169
    .restart local v27       #photoBm:Landroid/graphics/Bitmap;
    .restart local v28       #photoId:I
    :cond_d
    const/4 v13, 0x1

    goto :goto_7

    .line 191
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #contactCursor:Landroid/database/Cursor;
    .end local v27           #photoBm:Landroid/graphics/Bitmap;
    .end local v28           #photoId:I
    :cond_e
    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v21

    .line 192
    .local v21, isEmergencyNumber:Z
    if-eqz v21, :cond_f

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_8
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 198
    :cond_f
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 215
    .end local v21           #isEmergencyNumber:Z
    :pswitch_0
    const v7, 0x7f0200b0

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 216
    goto/16 :goto_6

    .line 218
    :pswitch_1
    const v7, 0x7f02009b

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 219
    goto/16 :goto_6

    .line 221
    :pswitch_2
    const v7, 0x7f0200a6

    move-object/from16 v0, v23

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    goto/16 :goto_6

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 244
    if-eqz p2, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030003

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 252
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f03001c

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDeleteCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    const/4 v2, 0x0

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, view:Landroid/view/View;
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 259
    const v1, 0x7f030003

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 262
    :cond_0
    const v1, 0x7f03001c

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
