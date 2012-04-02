.class public Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;
.super Landroid/app/Activity;
.source "CallDurationActivity.java"


# static fields
.field public static final DURATION_ALL_VIDEO:Ljava/lang/String; = "all_video"

.field public static final DURATION_ALL_VOICE:Ljava/lang/String; = "all_voice"

.field public static final DURATION_DIAL_VIDEO:Ljava/lang/String; = "dial_video"

.field public static final DURATION_DIAL_VOICE:Ljava/lang/String; = "dial_voice"

.field public static final DURATION_ID:Ljava/lang/String; = "_id"

.field public static final DURATION_LAST_VIDEO:Ljava/lang/String; = "last_video"

.field public static final DURATION_LAST_VOICE:Ljava/lang/String; = "last_voice"

.field public static final DURATION_RECE_VIDEO:Ljava/lang/String; = "rece_video"

.field public static final DURATION_RECE_VOICE:Ljava/lang/String; = "rece_voice"


# instance fields
.field private final DURATION_PROJ:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "last_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dial_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dial_video"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rece_voice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rece_video"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "all_voice"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "all_video"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    .line 277
    const-wide/16 v1, 0x0

    .line 278
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 279
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 281
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 282
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 283
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 285
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 286
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 287
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 289
    :cond_1
    move-wide v5, p1

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 293
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 294
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 297
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 300
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 303
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 306
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private resetDurationTable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 185
    .local v0, value:Landroid/content/ContentValues;
    const-string v1, "all_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v1, "all_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v1, "last_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v1, "last_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v1, "dial_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v1, "dial_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v1, "rece_video"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "rece_voice"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://logs/duration"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private setClearTime()V
    .locals 4

    .prologue
    const-string v3, "00:00:00"

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, voiceCallNumber:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 250
    .local v0, videoCallNumber:Landroid/widget/TextView;
    const v2, 0x7f06001b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 251
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v2, 0x7f06001d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 253
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const-string v2, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    const-string v2, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 257
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 259
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const-string v2, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const-string v2, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    const v2, 0x7f060021

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 263
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 265
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const-string v2, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const-string v2, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const v2, 0x7f060024

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 269
    .restart local v1       #voiceCallNumber:Landroid/widget/TextView;
    const v2, 0x7f060026

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #videoCallNumber:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .line 271
    .restart local v0       #videoCallNumber:Landroid/widget/TextView;
    const-string v2, "00:00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const-string v2, "00:00:00"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0x8

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->IS_QWERTY:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setRequestedOrientation(I)V

    .line 72
    :cond_0
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setContentView(I)V

    .line 74
    const/4 v11, 0x0

    .line 75
    .local v11, voiceCallNumber:Landroid/widget/TextView;
    const/4 v10, 0x0

    .line 76
    .local v10, videoCallText:Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 79
    .local v9, videoCallNumber:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/duration"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->DURATION_PROJ:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 81
    const-string v0, "Duration"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    const-wide/16 v7, 0x0

    .line 90
    .local v7, sumDuration:J
    const v0, 0x7f06001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 91
    .restart local v11       #voiceCallNumber:Landroid/widget/TextView;
    const-string v0, "last_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 92
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    const v0, 0x7f06001c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallText:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 99
    .restart local v10       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCallNumber:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 100
    .restart local v9       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    if-nez v0, :cond_2

    .line 101
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    :cond_2
    const-string v0, "last_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 106
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 113
    .restart local v11       #voiceCallNumber:Landroid/widget/TextView;
    const-string v0, "dial_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 114
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallText:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 120
    .restart local v10       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f060020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCallNumber:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 121
    .restart local v9       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    if-nez v0, :cond_3

    .line 122
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_3
    const-string v0, "dial_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 127
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v0, 0x7f060021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 134
    .restart local v11       #voiceCallNumber:Landroid/widget/TextView;
    const-string v0, "rece_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 135
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallText:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 141
    .restart local v10       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCallNumber:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 142
    .restart local v9       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    if-nez v0, :cond_4

    .line 143
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_4
    const-string v0, "rece_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 148
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #voiceCallNumber:Landroid/widget/TextView;
    check-cast v11, Landroid/widget/TextView;

    .line 154
    .restart local v11       #voiceCallNumber:Landroid/widget/TextView;
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10           #videoCallText:Landroid/widget/TextView;
    check-cast v10, Landroid/widget/TextView;

    .line 155
    .restart local v10       #videoCallText:Landroid/widget/TextView;
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #videoCallNumber:Landroid/widget/TextView;
    check-cast v9, Landroid/widget/TextView;

    .line 156
    .restart local v9       #videoCallNumber:Landroid/widget/TextView;
    sget-boolean v0, Lcom/sec/android/app/dialertab/DialerTabActivity;->VT_ENABLE:Z

    if-nez v0, :cond_5

    .line 157
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :cond_5
    const-string v0, "all_voice"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 162
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-string v0, "all_video"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 165
    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 204
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    const v1, 0x7f0600db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200df

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 206
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 212
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 219
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 214
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->resetDurationTable()V

    .line 215
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;->setClearTime()V

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600db
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    return-void
.end method
