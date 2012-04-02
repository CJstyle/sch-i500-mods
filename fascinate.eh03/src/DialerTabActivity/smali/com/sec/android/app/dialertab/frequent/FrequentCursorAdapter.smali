.class public Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "FrequentCursorAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final REDRAW:I = 0x1

.field private static final START_THREAD:I = 0x2


# instance fields
.field idxFerqContactId:I

.field idxFreqCount:I

.field idxFreqName:I

.field idxFreqNameReversed:I

.field idxFreqNumber:I

.field private mCallerIdThread:Ljava/lang/Thread;

.field private mCenterSepPos:I

.field private mCenterSeprationFlag:I

.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private volatile mDone:Z

.field private mFirst:Z

.field public mHandler:Landroid/os/Handler;

.field private mIsReversedName:Z

.field private mLoading:Z

.field private mOwnerActivity:Landroid/app/Activity;

.field public mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;II)V
    .locals 6
    .parameter "context"
    .parameter "c"
    .parameter "act"
    .parameter "centerSepPos"
    .parameter "centerFlag"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 289
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSepPos:I

    .line 78
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mLoading:Z

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    .line 93
    new-instance v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter$1;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mHandler:Landroid/os/Handler;

    .line 291
    iput v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqName:I

    .line 292
    iput v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqNumber:I

    .line 293
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqCount:I

    .line 294
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFerqContactId:I

    .line 295
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqNameReversed:I

    .line 297
    iput p4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSepPos:I

    .line 298
    iput p5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSeprationFlag:I

    .line 300
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 301
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    .line 302
    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 303
    iput-object p3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    .line 307
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "orderof"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mIsReversedName:Z

    .line 309
    return-void

    :cond_0
    move v0, v4

    .line 308
    goto :goto_0
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "number"
    .parameter "name"
    .parameter "contactId"

    .prologue
    .line 194
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;-><init>()V

    .line 195
    .local v0, ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    iput-object p1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    .line 196
    iput-wide p3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    .line 198
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mIsReversedName:Z

    if-eqz v1, :cond_0

    .line 199
    iput-object p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name:Ljava/lang/String;

    .line 204
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    return-void

    .line 201
    :cond_0
    iput-object p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name_reversed:Ljava/lang/String;

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private queryContactInfo(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;)V
    .locals 14
    .parameter "ciq"

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 214
    .local v10, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    if-eqz v10, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    if-eq v10, v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 259
    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->updateCallLog(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;)V

    .line 261
    :cond_2
    return-void

    .line 219
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 226
    .local v11, phonesCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 227
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .end local v10           #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    invoke-direct {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;-><init>()V

    .line 229
    .restart local v10       #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    .line 230
    const-string v0, "display_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 231
    const-string v0, "display_name_reverse"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    .line 232
    const-string v0, "number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->number:Ljava/lang/String;

    .line 233
    const-string v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    .line 234
    const-string v0, "label"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v6, v6, [Ljava/lang/String;

    const-string v0, "raw_contact_id"

    aput-object v0, v6, v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 240
    .local v12, rawCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 241
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 243
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->raw_contact_id:J

    .line 245
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 247
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 250
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 255
    .end local v12           #rawCursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 253
    .restart local v12       #rawCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private updateCallLog(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;)V
    .locals 9
    .parameter "ciq"
    .parameter "ci"

    .prologue
    const-string v8, "Exception while updating call info"

    const-string v7, "Call Log Cursor Adapter"

    .line 157
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mIsReversedName:Z

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    iget-wide v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    iget v5, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name_reversed:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    iget-wide v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    iget v5, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 171
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v3, "contactid"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v3, "name_reversed"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "raw_contact_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->raw_contact_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v2, where:Ljava/lang/StringBuffer;
    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 185
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 186
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 187
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 188
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 189
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 48
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 322
    if-nez p3, :cond_1

    .line 571
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local p1
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v44

    .line 327
    .local v44, position:I
    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, -0xa

    if-eq v9, v10, :cond_2

    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, -0xf

    if-ne v9, v10, :cond_6

    .line 328
    :cond_2
    const v9, 0x7f0600a4

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 329
    .local v21, Seperate:Landroid/widget/TextView;
    if-eqz v21, :cond_0

    .line 330
    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, -0xa

    if-ne v9, v10, :cond_4

    .line 331
    if-lez v44, :cond_3

    .line 332
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSepPos:I

    .line 334
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09003d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 336
    :cond_4
    if-eqz v44, :cond_5

    .line 337
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSepPos:I

    .line 339
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09003e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 343
    .end local v21           #Seperate:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSepPos:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSeprationFlag:I

    move v10, v0

    move/from16 v0, v44

    move v1, v9

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity;->getIsFrequentView(III)Z

    move-result v32

    .line 344
    .local v32, isFrequentView:Z
    const/4 v8, 0x0

    .line 345
    .local v8, viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    if-eqz v32, :cond_1a

    .line 347
    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, -0x64

    if-ne v9, v10, :cond_7

    .line 348
    const v9, 0x7f0600ac

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 349
    const v9, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 350
    const v9, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090047

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 355
    .restart local p1
    :cond_7
    const v9, 0x7f0600b1

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 357
    const v9, 0x7f0600b0

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/ImageView;

    .line 360
    .local v43, photoView:Landroid/widget/ImageView;
    const v9, 0x7f0600b7

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v37

    check-cast v37, Landroid/widget/TextView;

    .line 361
    .local v37, nameText:Landroid/widget/TextView;
    const v9, 0x7f0600b9

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 362
    .local v39, numberText:Landroid/widget/TextView;
    const v9, 0x7f0600ba

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 363
    .local v29, countText:Landroid/widget/TextView;
    const v9, 0x7f060036

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 365
    .local v24, callIndiImage:Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 366
    .local v35, myResources:Landroid/content/res/Resources;
    const/16 v30, 0x0

    .line 368
    .local v30, icon:Landroid/graphics/drawable/Drawable;
    const v9, 0x7f0200ee

    move-object/from16 v0, v35

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    .line 369
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqNumber:I

    move v9, v0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 373
    .local v11, strNumber:Ljava/lang/String;
    const-string v9, "-1"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 382
    :cond_8
    :goto_1
    const/16 v20, 0x0

    .line 384
    .local v20, Logname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mIsReversedName:Z

    move v9, v0

    if-eqz v9, :cond_13

    .line 385
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqName:I

    move v9, v0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 390
    :goto_2
    new-instance v28, Ljava/lang/StringBuffer;

    const-string v9, ""

    move-object/from16 v0, v28

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 391
    .local v28, count:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqCount:I

    move v9, v0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v28

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/4 v12, 0x0

    .line 395
    .local v12, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFerqContactId:I

    move v9, v0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 397
    .local v19, ContactId:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v9, v0

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 398
    .local v31, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    if-nez v31, :cond_14

    .line 401
    sget-object v31, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v9, v0

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v20

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 427
    :cond_9
    :goto_3
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 428
    move-object/from16 v12, v20

    .line 433
    :cond_a
    const/16 v22, 0x1

    .line 437
    .local v22, bNoImg:Z
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_c

    .line 438
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 439
    .local v6, uri:Landroid/net/Uri;
    const/4 v9, 0x3

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "_id"

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-string v10, "photo_id"

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const-string v10, "lookup"

    aput-object v10, v7, v9

    .line 441
    .local v7, projection:[Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 442
    .local v23, buffer:Ljava/lang/StringBuffer;
    const-string v9, "_id"

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    const-string v9, "=?"

    move-object/from16 v0, v23

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 447
    .local v5, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 454
    .local v25, contactCursor:Landroid/database/Cursor;
    if-eqz v25, :cond_c

    .line 455
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_b

    .line 456
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    const/4 v9, 0x1

    move-object/from16 v0, v25

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 459
    .local v42, photoId:I
    const/4 v9, 0x2

    move-object/from16 v0, v25

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 461
    .local v34, lookupkey:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide v13, v0

    const/4 v10, 0x0

    invoke-static {v9, v13, v14, v10}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v41

    .line 463
    .local v41, photoBm:Landroid/graphics/Bitmap;
    if-eqz v41, :cond_18

    .line 464
    const v9, 0x7f0600af

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/QuickContactBadge;

    .line 465
    .local v45, quickContactPhotoView:Landroid/widget/QuickContactBadge;
    const/4 v9, 0x0

    move-object/from16 v0, v45

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 466
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    move-wide v0, v9

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 468
    const/16 v22, 0x0

    .line 477
    .end local v34           #lookupkey:Ljava/lang/String;
    .end local v41           #photoBm:Landroid/graphics/Bitmap;
    .end local v42           #photoId:I
    .end local v45           #quickContactPhotoView:Landroid/widget/QuickContactBadge;
    :cond_b
    :goto_4
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 481
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #projection:[Ljava/lang/String;
    .end local v23           #buffer:Ljava/lang/StringBuffer;
    .end local v25           #contactCursor:Landroid/database/Cursor;
    :cond_c
    if-eqz v22, :cond_d

    .line 483
    const/4 v9, 0x0

    move-object/from16 v0, v43

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 484
    const v9, 0x7f0200eb

    move-object/from16 v0, v43

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 487
    :cond_d
    if-eqz v12, :cond_19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_19

    .line 488
    move-object/from16 v0, v37

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    :goto_5
    move-object/from16 v0, v39

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v29

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 498
    const v9, 0x7f090033

    move-object/from16 v0, v37

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 499
    move-object/from16 v0, v39

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mVoiceMailNumber:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 506
    const v9, 0x7f09002f

    move-object/from16 v0, v37

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 507
    move-object/from16 v0, v39

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object v9, v0

    if-nez v9, :cond_10

    .line 512
    const/4 v9, 0x1

    move v0, v9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mFirst:Z

    .line 513
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 514
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 516
    :cond_10
    new-instance v8, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    const/4 v9, 0x2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 517
    .restart local v8       #viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 376
    .end local v12           #name:Ljava/lang/String;
    .end local v19           #ContactId:Ljava/lang/Integer;
    .end local v20           #Logname:Ljava/lang/String;
    .end local v22           #bNoImg:Z
    .end local v28           #count:Ljava/lang/StringBuffer;
    .end local v31           #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    :cond_11
    const-string v9, "-2"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 377
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090031

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 379
    :cond_12
    const-string v9, "-3"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 380
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090032

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 387
    .restart local v20       #Logname:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->idxFreqNameReversed:I

    move v9, v0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_2

    .line 404
    .restart local v12       #name:Ljava/lang/String;
    .restart local v19       #ContactId:Ljava/lang/Integer;
    .restart local v28       #count:Ljava/lang/StringBuffer;
    .restart local v31       #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    :cond_14
    sget-object v9, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    move-object/from16 v0, v31

    move-object v1, v9

    if-eq v0, v1, :cond_9

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mIsReversedName:Z

    move v9, v0

    if-eqz v9, :cond_16

    .line 409
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 411
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v20

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 413
    :cond_15
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    move-object v12, v0

    goto/16 :goto_3

    .line 415
    :cond_16
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 417
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v20

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 419
    :cond_17
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    move-object v12, v0

    goto/16 :goto_3

    .line 470
    .end local v8           #viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    .restart local v5       #resolver:Landroid/content/ContentResolver;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #projection:[Ljava/lang/String;
    .restart local v22       #bNoImg:Z
    .restart local v23       #buffer:Ljava/lang/StringBuffer;
    .restart local v25       #contactCursor:Landroid/database/Cursor;
    .restart local v34       #lookupkey:Ljava/lang/String;
    .restart local v41       #photoBm:Landroid/graphics/Bitmap;
    .restart local v42       #photoId:I
    :cond_18
    const v9, 0x7f0600af

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/QuickContactBadge;

    .line 471
    .restart local v45       #quickContactPhotoView:Landroid/widget/QuickContactBadge;
    const/4 v9, 0x0

    move-object/from16 v0, v45

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 472
    const v9, 0x7f0200eb

    move-object/from16 v0, v45

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 473
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v9, v9

    move-wide v0, v9

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 474
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 490
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #projection:[Ljava/lang/String;
    .end local v23           #buffer:Ljava/lang/StringBuffer;
    .end local v25           #contactCursor:Landroid/database/Cursor;
    .end local v34           #lookupkey:Ljava/lang/String;
    .end local v41           #photoBm:Landroid/graphics/Bitmap;
    .end local v42           #photoId:I
    .end local v45           #quickContactPhotoView:Landroid/widget/QuickContactBadge;
    :cond_19
    move-object/from16 v0, v37

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 521
    .end local v11           #strNumber:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v19           #ContactId:Ljava/lang/Integer;
    .end local v20           #Logname:Ljava/lang/String;
    .end local v22           #bNoImg:Z
    .end local v24           #callIndiImage:Landroid/widget/ImageView;
    .end local v28           #count:Ljava/lang/StringBuffer;
    .end local v29           #countText:Landroid/widget/TextView;
    .end local v30           #icon:Landroid/graphics/drawable/Drawable;
    .end local v31           #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    .end local v35           #myResources:Landroid/content/res/Resources;
    .end local v37           #nameText:Landroid/widget/TextView;
    .end local v39           #numberText:Landroid/widget/TextView;
    .end local v43           #photoView:Landroid/widget/ImageView;
    .restart local v8       #viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    :cond_1a
    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, -0x64

    if-ne v9, v10, :cond_1b

    .line 522
    const v9, 0x7f0600ac

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 523
    const v9, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 524
    const v9, 0x7f0600bb

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090048

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 529
    .restart local p1
    :cond_1b
    const v9, 0x7f0600b5

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 530
    const v9, 0x7f0600b2

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 531
    .local v38, nameView:Landroid/widget/TextView;
    const v9, 0x7f0600b4

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/ImageView;

    .line 532
    .local v47, starView:Landroid/widget/ImageView;
    const v9, 0x7f0200ef

    move-object/from16 v0, v47

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    new-instance v36, Landroid/database/CharArrayBuffer;

    const/16 v9, 0x80

    move-object/from16 v0, v36

    move v1, v9

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    .line 536
    .local v36, nameBuffer:Landroid/database/CharArrayBuffer;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mIsReversedName:Z

    move v9, v0

    if-eqz v9, :cond_1c

    .line 537
    const/4 v9, 0x1

    move-object/from16 v0, p3

    move v1, v9

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 541
    :goto_6
    move-object/from16 v0, v36

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v46, v0

    .line 542
    .local v46, size:I
    if-eqz v46, :cond_1d

    .line 543
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v38

    move-object v1, v9

    move v2, v10

    move/from16 v3, v46

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->setText([CII)V

    .line 548
    :goto_7
    const/4 v9, 0x4

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 549
    .restart local v42       #photoId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide v10, v0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v40

    .line 552
    .local v40, photo:Landroid/graphics/Bitmap;
    const v9, 0x7f0600af

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/QuickContactBadge;

    .line 553
    .restart local v45       #quickContactPhotoView:Landroid/widget/QuickContactBadge;
    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 554
    .local v26, contactId:J
    const/4 v9, 0x3

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 556
    .local v33, lookupKey:Ljava/lang/String;
    if-eqz v40, :cond_1e

    .line 558
    const/4 v9, 0x0

    move-object/from16 v0, v45

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 559
    move-object/from16 v0, v45

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 560
    move-wide/from16 v0, v26

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 566
    :goto_8
    invoke-virtual/range {v38 .. v38}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 567
    .local v17, str:Ljava/lang/String;
    new-instance v8, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .end local v8           #viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    const/4 v14, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    invoke-direct/range {v13 .. v18}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 568
    .restart local v8       #viewTag:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 539
    .end local v17           #str:Ljava/lang/String;
    .end local v26           #contactId:J
    .end local v33           #lookupKey:Ljava/lang/String;
    .end local v40           #photo:Landroid/graphics/Bitmap;
    .end local v42           #photoId:I
    .end local v45           #quickContactPhotoView:Landroid/widget/QuickContactBadge;
    .end local v46           #size:I
    :cond_1c
    const/4 v9, 0x5

    move-object/from16 v0, p3

    move v1, v9

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto/16 :goto_6

    .line 545
    .restart local v46       #size:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    const v10, 0x104000e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, v38

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 562
    .restart local v26       #contactId:J
    .restart local v33       #lookupKey:Ljava/lang/String;
    .restart local v40       #photo:Landroid/graphics/Bitmap;
    .restart local v42       #photoId:I
    .restart local v45       #quickContactPhotoView:Landroid/widget/QuickContactBadge;
    :cond_1e
    const/4 v9, 0x0

    move-object/from16 v0, v45

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    .line 563
    const v9, 0x7f0200eb

    move-object/from16 v0, v45

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 564
    move-wide/from16 v0, v26

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, v45

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_8
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    .locals 1
    .parameter "number"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 594
    if-eqz p2, :cond_1

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, -0xf

    if-ne v0, v1, :cond_2

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f03000f

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 601
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 598
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030012

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 605
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 606
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le p1, v1, :cond_1

    :cond_0
    move v1, v3

    .line 629
    :goto_0
    return v1

    .line 615
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 616
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-gez v1, :cond_2

    move v1, v3

    .line 617
    goto :goto_0

    .line 619
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 622
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 624
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    .line 625
    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    move v1, v3

    .line 629
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    const/4 v4, 0x0

    .line 576
    const/4 v1, 0x0

    .line 578
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0xa

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, -0xf

    if-ne v2, v3, :cond_1

    .line 580
    :cond_0
    const v2, 0x7f03000f

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 589
    :goto_1
    return-object v2

    .line 582
    :cond_1
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 584
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 585
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "FrequentCursorAdapter"

    const-string v3, "Resource not found exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    .line 586
    goto :goto_1
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mFirst:Z

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 268
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mDone:Z

    if-nez v2, :cond_2

    .line 269
    const/4 v1, 0x0

    .line 270
    .local v1, ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v3

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;

    move-object v1, v0

    .line 280
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-eqz v1, :cond_0

    .line 282
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->queryContactInfo(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;)V

    goto :goto_0

    .line 275
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 276
    :catch_0
    move-exception v2

    goto :goto_1

    .line 280
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 285
    .end local v1           #ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    :cond_2
    return-void
.end method

.method public setCenterSepFlag(I)V
    .locals 0
    .parameter "Flag"

    .prologue
    .line 316
    iput p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSeprationFlag:I

    .line 317
    return-void
.end method

.method public setCenterSepPos(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 312
    iput p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCenterSepPos:I

    .line 313
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mLoading:Z

    .line 118
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mDone:Z

    .line 136
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mDone:Z

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentCursorAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 147
    return-void
.end method
