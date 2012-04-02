.class public Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;
.super Landroid/widget/CursorAdapter;
.source "FrequentGridAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final REDRAW:I = 0x1

.field private static final START_THREAD:I = 0x2


# instance fields
.field ROW_LENGTH:I

.field private iDataTypeTag:I

.field idxFerqContactId:I

.field idxFreqName:I

.field idxFreqNameReversed:I

.field idxFreqNumber:I

.field private mCallerIdThread:Ljava/lang/Thread;

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
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/app/Activity;I)V
    .locals 7
    .parameter "context"
    .parameter "c"
    .parameter "act"
    .parameter "iDataType"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 295
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 80
    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 86
    iput-boolean v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mLoading:Z

    .line 93
    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mOwnerActivity:Landroid/app/Activity;

    .line 95
    new-instance v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter$1;-><init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mHandler:Landroid/os/Handler;

    .line 292
    iput v4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->iDataTypeTag:I

    .line 297
    iput v6, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFreqNumber:I

    .line 298
    iput v5, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFreqName:I

    .line 299
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFreqNameReversed:I

    .line 300
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFerqContactId:I

    .line 302
    iput p4, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->iDataTypeTag:I

    .line 304
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 305
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    .line 306
    iput-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 307
    iput-object p3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mOwnerActivity:Landroid/app/Activity;

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 309
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContext:Landroid/content/Context;

    .line 311
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 314
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->ROW_LENGTH:I

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "orderof"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mIsReversedName:Z

    .line 316
    return-void

    :cond_0
    move v1, v4

    .line 315
    goto :goto_0
.end method

.method private SearchName(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;J)I
    .locals 4
    .parameter "Logname"
    .parameter "number"
    .parameter "nameText"
    .parameter "contactId"

    .prologue
    const-string v3, ""

    .line 366
    const/4 v1, 0x0

    .line 369
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 370
    .local v0, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    if-nez v0, :cond_5

    .line 373
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 374
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 398
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 399
    move-object v1, p1

    .line 404
    :cond_1
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 405
    if-eqz p3, :cond_2

    .line 406
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_2
    :goto_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 423
    const v2, 0x7f090033

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 429
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 430
    if-eqz p3, :cond_4

    .line 431
    const v2, 0x7f09002f

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 433
    :cond_4
    iget v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    return v2

    .line 376
    :cond_5
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    if-eq v0, v2, :cond_0

    .line 380
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mIsReversedName:Z

    if-eqz v2, :cond_7

    .line 381
    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 383
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 385
    :cond_6
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_7
    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 389
    invoke-direct {p0, p2, p1, p4, p5}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V

    .line 391
    :cond_8
    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    goto :goto_0

    .line 409
    :cond_9
    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 410
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_a
    if-nez p3, :cond_b

    .line 413
    const-string v2, ""

    const-string v2, "==== nameText is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_b
    if-nez p2, :cond_2

    .line 416
    const-string v2, ""

    const-string v2, "=== number is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private SearchPhoto(ILandroid/widget/RelativeLayout;)V
    .locals 16
    .parameter "ContactId"
    .parameter "view"

    .prologue
    .line 319
    if-nez p2, :cond_1

    .line 320
    const-string v2, ""

    const-string v3, "========== view is null ============"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    const v2, 0x7f0600a9

    move-object/from16 v0, p2

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 324
    .local v15, photoView:Landroid/widget/ImageView;
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 325
    .local v11, lp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->ROW_LENGTH:I

    move v2, v0

    iput v2, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->ROW_LENGTH:I

    move v2, v0

    add-int/lit8 v2, v2, 0x5

    iput v2, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 327
    invoke-virtual {v15, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    const/4 v8, 0x1

    .line 331
    .local v8, bNoImg:Z
    const/4 v12, 0x0

    .line 333
    .local v12, myResources:Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 335
    if-eqz p1, :cond_3

    .line 336
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 338
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;->CONTACT_PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 341
    .local v10, contactCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 342
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 345
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 346
    .local v14, photoId:I
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-long v4, v14

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/sec/android/app/dialertab/dialer/ContactsUtils;->loadContactPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .end local v3           #uri:Landroid/net/Uri;
    move-result-object v13

    .line 348
    .local v13, photoBm:Landroid/graphics/Bitmap;
    if-eqz v13, :cond_4

    .line 349
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    const/4 v8, 0x0

    .line 356
    .end local v13           #photoBm:Landroid/graphics/Bitmap;
    .end local v14           #photoId:I
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 359
    .end local v10           #contactCursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v8, :cond_0

    .line 361
    const v2, 0x7f0200ea

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 362
    .local v9, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 353
    .end local v9           #bg:Landroid/graphics/drawable/Drawable;
    .restart local v10       #contactCursor:Landroid/database/Cursor;
    .restart local v13       #photoBm:Landroid/graphics/Bitmap;
    .restart local v14       #photoId:I
    :cond_4
    const/4 v8, 0x1

    goto :goto_1
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "number"
    .parameter "name"
    .parameter "contactId"

    .prologue
    .line 197
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;-><init>()V

    .line 198
    .local v0, ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    iput-object p1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    .line 199
    iput-wide p3, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    .line 201
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mIsReversedName:Z

    if-eqz v1, :cond_0

    .line 202
    iput-object p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name:Ljava/lang/String;

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    return-void

    .line 204
    :cond_0
    iput-object p2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name_reversed:Ljava/lang/String;

    goto :goto_0

    .line 210
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

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .line 217
    .local v10, info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    if-eqz v10, :cond_3

    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    if-eq v10, v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 263
    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->updateCallLog(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;)V

    .line 265
    :cond_2
    return-void

    .line 222
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mOwnerActivity:Landroid/app/Activity;

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

    .line 229
    .local v11, phonesCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 230
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 231
    new-instance v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    .end local v10           #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    invoke-direct {v10}, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;-><init>()V

    .line 232
    .restart local v10       #info:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    .line 233
    const-string v0, "display_name"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    .line 234
    const-string v0, "number"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->number:Ljava/lang/String;

    .line 235
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    .line 236
    const-string v0, "type"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    .line 237
    const-string v0, "label"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->label:Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mOwnerActivity:Landroid/app/Activity;

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

    .line 244
    .local v12, rawCursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 245
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 246
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->raw_contact_id:J

    .line 249
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v0

    .line 254
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    .end local v12           #rawCursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 257
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

    .line 159
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mIsReversedName:Z

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    iget-wide v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    iget v5, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->name_reversed:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    iget-wide v3, p1, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;->contactId:J

    iget v5, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 173
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "name"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "contactid"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v3, "name_reversed"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->name_Reversed:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "numbertype"

    iget v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v3, "numberlabel"

    iget-object v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v3, "raw_contact_id"

    iget-wide v4, p2, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;->raw_contact_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v2, where:Ljava/lang/StringBuffer;
    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
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

    .line 186
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mOwnerActivity:Landroid/app/Activity;

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

    .line 187
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 188
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 189
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 190
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 191
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 192
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v3, "Call Log Cursor Adapter"

    const-string v3, "Exception while updating call info"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 438
    if-nez p3, :cond_1

    .line 498
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 441
    .restart local p2
    :cond_1
    const v3, 0x7f0600a8

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 442
    .local v16, layout:Landroid/widget/RelativeLayout;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 443
    const v3, 0x7f0600a1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 445
    .local v6, nameText_1st:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 446
    .local v5, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 447
    .local v4, Logname:Ljava/lang/String;
    const/4 v9, 0x0

    .line 450
    .local v9, ContactId:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFreqNumber:I

    move v3, v0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 451
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mIsReversedName:Z

    move v3, v0

    if-eqz v3, :cond_3

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFreqName:I

    move v3, v0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 457
    :goto_1
    const-string v3, "-1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090030

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 466
    .restart local v5       #number:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->iDataTypeTag:I

    move v3, v0

    const/4 v7, 0x2

    if-ne v3, v7, :cond_6

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFerqContactId:I

    move v3, v0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 473
    :goto_3
    int-to-long v7, v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->SearchName(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;J)I

    .line 478
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object/from16 p2, v0

    .end local p2
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->SearchPhoto(ILandroid/widget/RelativeLayout;)V

    .line 480
    const/4 v7, 0x0

    .line 481
    .local v7, TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    const v3, 0x7f0600ab

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 482
    .local v17, starView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->iDataTypeTag:I

    move v3, v0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_7

    .line 483
    .end local v6           #nameText_1st:Landroid/widget/TextView;
    new-instance v7, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .end local v7           #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->iDataTypeTag:I

    move v8, v0

    const/4 v12, 0x0

    move-object v10, v5

    move-object v11, v4

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 484
    .restart local v7       #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    const/16 v3, 0x8

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    :goto_4
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 494
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mFirst:Z

    .line 495
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/16 :goto_0

    .line 454
    .end local v7           #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    .end local v17           #starView:Landroid/widget/ImageView;
    .restart local v6       #nameText_1st:Landroid/widget/TextView;
    .restart local p2
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->idxFreqNameReversed:I

    move v3, v0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 459
    :cond_4
    const-string v3, "-2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090031

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .restart local v5       #number:Ljava/lang/String;
    goto/16 :goto_2

    .line 461
    :cond_5
    const-string v3, "-3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090032

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .restart local v5       #number:Ljava/lang/String;
    goto/16 :goto_2

    .line 470
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    goto/16 :goto_3

    .line 486
    .end local v6           #nameText_1st:Landroid/widget/TextView;
    .end local p2
    .restart local v7       #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    .restart local v17       #starView:Landroid/widget/ImageView;
    :cond_7
    new-instance v7, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;

    .end local v7           #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->iDataTypeTag:I

    move v11, v0

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v10, v7

    move-object v14, v4

    invoke-direct/range {v10 .. v15}, Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    .line 487
    .restart local v7       #TagData:Lcom/sec/android/app/dialertab/frequent/FrequentListActivity$ViewData;
    const v3, 0x7f0200ed

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
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
    .line 133
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$ContactInfo;

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 504
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, view:Landroid/view/View;
    const v1, 0x7f030011

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 512
    return-object v0
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mFirst:Z

    .line 115
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 272
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mDone:Z

    if-nez v2, :cond_2

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v3

    .line 275
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;

    move-object v1, v0

    .line 284
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    if-eqz v1, :cond_0

    .line 286
    invoke-direct {p0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->queryContactInfo(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;)V

    goto :goto_0

    .line 279
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v2

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 289
    .end local v1           #ciq:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$LogInfo;
    :cond_2
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mLoading:Z

    .line 120
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mDone:Z

    .line 138
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 141
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mDone:Z

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    return-void
.end method
