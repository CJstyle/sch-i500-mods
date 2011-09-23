.class public Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "DetailDeleteCursorAdapter.java"


# instance fields
.field idxCallType:I

.field idxDate:I

.field idxDuration:I

.field mCalendar:Ljava/util/Calendar;

.field mCurrentDay:I

.field mCurrentMonth:I

.field mCurrentYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "context"
    .parameter "c"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 59
    const-string v0, "date"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->idxDate:I

    .line 60
    const-string v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->idxCallType:I

    .line 61
    const-string v0, "duration"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->idxDuration:I

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCurrentYear:I

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCurrentMonth:I

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCurrentDay:I

    .line 69
    return-void
.end method

.method private formatDate(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "date"

    .prologue
    .line 120
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 121
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 122
    .local v6, year:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 123
    .local v5, month:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 124
    .local v2, day:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 125
    .local v4, min:I
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 127
    .local v0, ampm:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v1, dateBuffer:Ljava/lang/StringBuffer;
    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCurrentYear:I

    if-ne v7, v6, :cond_2

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCurrentMonth:I

    if-ne v7, v5, :cond_2

    iget v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCurrentDay:I

    if-ne v7, v2, :cond_2

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :goto_0
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    sget-boolean v7, Lcom/sec/android/app/dialertab/DialerTabActivity;->m24TimeFormat:Z

    if-eqz v7, :cond_b

    .line 184
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 185
    .local v3, hour:I
    const/16 v7, 0xa

    if-ge v3, v7, :cond_0

    .line 186
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 189
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const/16 v7, 0xa

    if-ge v4, v7, :cond_1

    .line 191
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 194
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 134
    .end local v3           #hour:I
    :cond_2
    sget-object v7, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v8, "MM-dd-yyyy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 136
    const/16 v7, 0xa

    if-ge v5, v7, :cond_3

    .line 137
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 140
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const/16 v7, 0xa

    if-ge v2, v7, :cond_4

    .line 142
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 148
    :cond_5
    sget-object v7, Lcom/sec/android/app/dialertab/DialerTabActivity;->mDateFormat:Ljava/lang/String;

    const-string v8, "dd-MM-yyyy"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 151
    const/16 v7, 0xa

    if-ge v2, v7, :cond_6

    .line 152
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const/16 v7, 0xa

    if-ge v5, v7, :cond_7

    .line 158
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 161
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 166
    :cond_8
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 167
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const/16 v7, 0xa

    if-ge v5, v7, :cond_9

    .line 169
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    :cond_9
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const/16 v7, 0xa

    if-ge v2, v7, :cond_a

    .line 174
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 198
    :cond_b
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 201
    .restart local v3       #hour:I
    if-nez v3, :cond_e

    .line 202
    const/16 v3, 0xc

    .line 209
    :cond_c
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 210
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const/16 v7, 0xa

    if-ge v4, v7, :cond_d

    .line 212
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 215
    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    if-nez v0, :cond_f

    .line 217
    const-string v7, "AM"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 206
    :cond_e
    const/16 v7, 0xa

    if-ge v3, v7, :cond_c

    .line 207
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 219
    :cond_f
    const-string v7, "PM"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    .line 227
    const-wide/16 v1, 0x0

    .line 228
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 229
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 231
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 232
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 233
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 235
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 236
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 237
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 239
    :cond_1
    move-wide v5, p1

    .line 242
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 243
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 244
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 247
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 250
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 253
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 256
    const-string v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 73
    if-nez p3, :cond_0

    .line 99
    :goto_0
    return-void

    .line 76
    :cond_0
    const v8, 0x7f060041

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 77
    .local v4, dateText:Landroid/widget/TextView;
    const v8, 0x7f060043

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 78
    .local v7, durationText:Landroid/widget/TextView;
    const v8, 0x7f06003f

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 80
    .local v1, callTypeImageView:Landroid/widget/ImageView;
    iget v8, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->idxDate:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 81
    .local v2, date:J
    iget v8, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->idxDuration:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 82
    .local v5, duration:J
    iget v8, p0, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->idxCallType:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 84
    .local v0, callType:I
    invoke-direct {p0, p2, v2, v3}, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/dialertab/calllog/DetailDeleteCursorAdapter;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 89
    :pswitch_0
    const v8, 0x7f0200b3

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    const v8, 0x7f0200a9

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 95
    :pswitch_2
    const v8, 0x7f02009e

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 112
    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, view:Landroid/view/View;
    return-object v0
.end method
