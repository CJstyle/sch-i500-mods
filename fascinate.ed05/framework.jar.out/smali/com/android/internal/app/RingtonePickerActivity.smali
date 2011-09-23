.class public final Lcom/android/internal/app/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final DEFAULT_NOTIFICATION_RINGTONE_TITLE:Ljava/lang/String; = "Sherbet"

.field private static final DEFAULT_RINGTONE_TITLE:Ljava/lang/String; = "VZW default"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private includeDrm:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mDidRegister:Z

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasSilentItem:Z

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSDcardReceiver:Landroid/content/BroadcastReceiver;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mUriForDefaultItem:Landroid/net/Uri;

.field private types:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 87
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 90
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 93
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 110
    iput-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->includeDrm:Z

    .line 111
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->types:I

    .line 121
    iput-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    .line 124
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$1;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$2;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/app/RingtonePickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/RingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/app/RingtonePickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/app/RingtonePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 344
    const v0, 0x10403f5

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 348
    const v0, 0x10403f7

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 338
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 339
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 340
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method private getListPosition(I)I
    .locals 1
    .parameter "ringtoneManagerPos"

    .prologue
    .line 606
    if-gez p1, :cond_0

    move v0, p1

    .line 608
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .parameter "listPos"

    .prologue
    .line 600
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 469
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 470
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 471
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 597
    :cond_2
    return-void
.end method


# virtual methods
.method public getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const-string v5, "_data"

    const-string v0, "RingtonePickerActivity"

    .line 612
    const/4 v8, 0x0

    .line 613
    .local v8, str:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v5, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 616
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 617
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 618
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 620
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The actual path is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :cond_0
    if-eqz v6, :cond_1

    .line 628
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_1
    return-object v8

    .line 623
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 624
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 628
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_2
    throw v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x1

    const/4 v12, -0x1

    const/4 v10, 0x0

    const-string v11, "RingtonePickerActivity"

    .line 355
    if-ne p2, v12, :cond_1

    move v5, v8

    .line 361
    .local v5, positiveResult:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v8}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 363
    if-eqz v5, :cond_5

    .line 364
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v6, resultIntent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 367
    .local v7, uri:Landroid/net/Uri;
    iget v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v8, v9, :cond_2

    .line 369
    iget-object v7, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 440
    :cond_0
    :goto_1
    const-string v8, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 441
    invoke-virtual {p0, v12, v6}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 446
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    new-instance v9, Lcom/android/internal/app/RingtonePickerActivity$3;

    invoke-direct {v9, p0}, Lcom/android/internal/app/RingtonePickerActivity$3;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 453
    :goto_3
    return-void

    .end local v5           #positiveResult:Z
    :cond_1
    move v5, v10

    .line 355
    goto :goto_0

    .line 370
    .restart local v5       #positiveResult:Z
    .restart local v6       #resultIntent:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_2
    iget v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v8, v9, :cond_3

    .line 372
    const/4 v7, 0x0

    goto :goto_1

    .line 374
    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v9}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 375
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : mClickedPos : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : getRingtoneManagerPosition(mClickedPos) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v9}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-nez v7, :cond_4

    .line 379
    const-string v8, "RingtonePickerActivity"

    const-string v8, "onClick : uri is null"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v8, "RingtonePickerActivity"

    const-string v8, "onClick : File not found. RESULT_CANCELED"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {p0, v10}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto :goto_3

    .line 384
    :cond_4
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 385
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : uri.toString() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/RingtonePickerActivity;->getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 390
    .local v2, mFilePath:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 392
    .local v1, mDRMManager:Landroid/drm/mobile2/OMADRMManager;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 394
    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v3

    .line 395
    .local v3, mReturnValue:I
    const-string v8, "RingtonePickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DRM TYPE : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    packed-switch v3, :pswitch_data_0

    .line 419
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v8}, Landroid/media/RingtoneManager;->getType()I

    move-result v4

    .line 420
    .local v4, mRingtoneType:I
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Landroid/drm/mobile2/OMADRMManager;->removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 426
    .end local v3           #mReturnValue:I
    .end local v4           #mRingtoneType:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 427
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : Exception in DRM : OMADRMException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 414
    .end local v0           #e:Landroid/drm/mobile2/OMADRMException;
    .restart local v3       #mReturnValue:I
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Landroid/drm/mobile2/OMADRMManager;->setAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 429
    .end local v3           #mReturnValue:I
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 430
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : Exception in DRM : FileNotFoundException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 432
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 433
    .local v0, e:Ljava/io/IOException;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : Exception in DRM : IOException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v0, v8

    .line 436
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick : Exception in DRM : Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 443
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mDRMManager:Landroid/drm/mobile2/OMADRMManager;
    .end local v2           #mFilePath:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto/16 :goto_2

    .line 396
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v5, "file"

    .line 174
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v4, "file"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 178
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/app/RingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, filterEject:Landroid/content/IntentFilter;
    const-string v4, "file"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/app/RingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 186
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 194
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 195
    const-string v4, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 196
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v4, :cond_0

    .line 197
    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 201
    :cond_0
    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    .line 206
    new-instance v4, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 209
    const-string v4, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->includeDrm:Z

    .line 211
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-boolean v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->includeDrm:Z

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 214
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->types:I

    .line 215
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->types:I

    if-eq v4, v7, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->types:I

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 219
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 222
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 225
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 228
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 229
    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 230
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    const-string/jumbo v4, "title"

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 232
    iput-boolean v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 233
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 234
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 235
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 236
    const/high16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 237
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 238
    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 240
    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 241
    iget-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v4, :cond_2

    .line 242
    const v4, 0x10403f8

    invoke-virtual {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->setupAlert()V

    .line 246
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 169
    return-void

    .line 163
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 164
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "RingtonePickerActivity"

    const-string v2, " IllegalArgumentException Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    throw v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 460
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 462
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 465
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 571
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 572
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 573
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    .line 578
    :cond_0
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 8
    .parameter "listView"

    .prologue
    const/4 v6, -0x1

    const-string v7, "RingtonePickerActivity"

    .line 270
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 271
    iget-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 273
    .local v0, ringtoneCursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 274
    .local v3, tempRingtone:Landroid/media/Ringtone;
    const/4 v2, 0x0

    .line 275
    .local v2, ringtoneTitle:Ljava/lang/String;
    const/4 v1, -0x1

    .line 277
    .local v1, ringtoneIndex:I
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4, v1}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_5

    .line 280
    invoke-virtual {v3, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_5

    .line 284
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getType()I

    move-result v5

    if-ne v4, v5, :cond_4

    const-string v4, "VZW default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 285
    const-string v4, "RingtonePickerActivity"

    const-string v4, "Ringtone Type - Voice Call Ringtone and VZW default"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v4, :cond_6

    .line 299
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 305
    :goto_2
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 309
    .end local v0           #ringtoneCursor:Landroid/database/Cursor;
    .end local v1           #ringtoneIndex:I
    .end local v2           #ringtoneTitle:Ljava/lang/String;
    .end local v3           #tempRingtone:Landroid/media/Ringtone;
    :cond_1
    iget-boolean v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v4, :cond_2

    .line 310
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 313
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v4, :cond_2

    .line 314
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 318
    :cond_2
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v4, v6, :cond_3

    .line 319
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 323
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 324
    return-void

    .line 289
    .restart local v0       #ringtoneCursor:Landroid/database/Cursor;
    .restart local v1       #ringtoneIndex:I
    .restart local v2       #ringtoneTitle:Ljava/lang/String;
    .restart local v3       #tempRingtone:Landroid/media/Ringtone;
    :cond_4
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getType()I

    move-result v5

    if-ne v4, v5, :cond_5

    const-string v4, "Sherbet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 290
    const-string v4, "RingtonePickerActivity"

    const-string v4, "Ringtone Type - Notification Ringtone and Sherbet"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 302
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    goto :goto_2
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 251
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 252
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-boolean v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->includeDrm:Z

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 253
    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->types:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->types:I

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 258
    .local v1, cur:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 259
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/SimpleCursorAdapter;

    if-eqz v2, :cond_1

    .line 260
    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 261
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 262
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    .line 263
    .local v0, ca:Landroid/widget/CursorAdapter;
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 266
    .end local v0           #ca:Landroid/widget/CursorAdapter;
    :cond_1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    .line 267
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 555
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 567
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 479
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 496
    :cond_0
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_2

    .line 498
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 504
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 505
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 507
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 515
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 531
    :goto_1
    if-eqz v0, :cond_1

    .line 545
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setRingerMode(I)V

    .line 546
    const-string v1, "RingtonePickerActivity"

    const-string/jumbo v2, "setRingerMode(AudioManager.MODE_RING_PR)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 528
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
