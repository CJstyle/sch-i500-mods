.class public final Lcom/android/internal/app/RingtonePickerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;


# static fields
.field private static final DEFAULT_RINGTONE_TITLE:Ljava/lang/String; = "Sherbet"

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

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

.field private mTypes:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 83
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 86
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 89
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 92
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    .line 122
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$1;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
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
    .line 67
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/RingtonePickerActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/app/RingtonePickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/app/RingtonePickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/RingtonePickerActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 322
    const v0, 0x104043d

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .parameter "listView"

    .prologue
    .line 326
    const v0, 0x104043f

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .parameter "listView"
    .parameter "textResId"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 317
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 318
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
    .line 546
    if-gez p1, :cond_0

    move v0, p1

    .line 548
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
    .line 540
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .parameter "position"
    .parameter "delayMs"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 447
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 448
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    return-void
.end method

.method private stopAnyPlayingRingtone()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 530
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

    .line 532
    const-string v0, "RingtonePickerActivity"

    const-string v1, "Need to set Ringtone Stop Mode Normal "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 537
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

    .line 552
    const/4 v8, 0x0

    .line 553
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

    .line 556
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 557
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 558
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 560
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

    .line 567
    :cond_0
    if-eqz v6, :cond_1

    .line 568
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_1
    return-object v8

    .line 563
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 564
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick : Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 567
    if-eqz v6, :cond_1

    goto :goto_0

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 568
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 567
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

    .line 333
    if-ne p2, v12, :cond_1

    move v5, v8

    .line 339
    .local v5, positiveResult:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v8}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 341
    if-eqz v5, :cond_5

    .line 342
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 343
    .local v6, resultIntent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 345
    .local v7, uri:Landroid/net/Uri;
    iget v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v8, v9, :cond_2

    .line 347
    iget-object v7, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 418
    :cond_0
    :goto_1
    const-string v8, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v12, v6}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 424
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

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->finish()V

    .line 431
    :goto_3
    return-void

    .end local v5           #positiveResult:Z
    :cond_1
    move v5, v10

    .line 333
    goto :goto_0

    .line 348
    .restart local v5       #positiveResult:Z
    .restart local v6       #resultIntent:Landroid/content/Intent;
    .restart local v7       #uri:Landroid/net/Uri;
    :cond_2
    iget v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v8, v9, :cond_3

    .line 350
    const/4 v7, 0x0

    goto :goto_1

    .line 352
    :cond_3
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v9}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 353
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : mClickedPos : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : getRingtoneManagerPosition(mClickedPos) : "

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

    .line 355
    if-nez v7, :cond_4

    .line 357
    const-string v8, "RingtonePickerActivity"

    const-string/jumbo v8, "onClick : uri is null"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v8, "RingtonePickerActivity"

    const-string/jumbo v8, "onClick : File not found. RESULT_CANCELED"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, v10}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto :goto_3

    .line 362
    :cond_4
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 363
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : uri.toString() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/RingtonePickerActivity;->getAudioFilePath(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, mFilePath:Ljava/lang/String;
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v1

    .line 370
    .local v1, mDRMManager:Landroid/drm/mobile2/OMADRMManager;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 372
    const/4 v8, 0x1

    invoke-virtual {v1, v2, v8}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v3

    .line 373
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

    .line 374
    packed-switch v3, :pswitch_data_0

    .line 397
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v8}, Landroid/media/RingtoneManager;->getType()I

    move-result v4

    .line 398
    .local v4, mRingtoneType:I
    iget-object v8, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Landroid/drm/mobile2/OMADRMManager;->removeAsRingTone(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 404
    .end local v3           #mReturnValue:I
    .end local v4           #mRingtoneType:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 405
    .local v0, e:Landroid/drm/mobile2/OMADRMException;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : Exception in DRM : OMADRMException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 392
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

    .line 407
    .end local v3           #mReturnValue:I
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 408
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : Exception in DRM : FileNotFoundException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 410
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 411
    .local v0, e:Ljava/io/IOException;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : Exception in DRM : IOException :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 413
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    move-object v0, v8

    .line 414
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "RingtonePickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onClick : Exception in DRM : Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 421
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mDRMManager:Landroid/drm/mobile2/OMADRMManager;
    .end local v2           #mFilePath:Ljava/lang/String;
    .end local v6           #resultIntent:Landroid/content/Intent;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/android/internal/app/RingtonePickerActivity;->setResult(I)V

    goto/16 :goto_2

    .line 374
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const-string v9, "file"

    .line 173
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "file"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/app/RingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 180
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, filterEject:Landroid/content/IntentFilter;
    const-string v6, "file"

    invoke-virtual {v1, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 182
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/app/RingtonePickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 188
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/internal/app/RingtonePickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 194
    const-string v6, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 195
    const-string v6, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 196
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v6, :cond_0

    .line 197
    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 201
    :cond_0
    const-string v6, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    .line 204
    new-instance v6, Landroid/media/RingtoneManager;

    invoke-direct {v6, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 207
    const-string v6, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 209
    .local v2, includeDrm:Z
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6, v2}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 212
    const-string v6, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 213
    .local v5, types:I
    iput v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mTypes:I

    .line 214
    if-eq v5, v8, :cond_1

    .line 215
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 218
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 221
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/internal/app/RingtonePickerActivity;->setVolumeControlStream(I)V

    .line 224
    const-string v6, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 227
    iget-object v4, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 228
    .local v4, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 229
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 230
    const-string/jumbo v6, "title"

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 231
    iput-boolean v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 232
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 233
    const v6, 0x104000a

    invoke-virtual {p0, v6}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 234
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 235
    const/high16 v6, 0x104

    invoke-virtual {p0, v6}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 236
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 237
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    .line 239
    const-string v6, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 240
    iget-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v6, :cond_2

    .line 241
    const v6, 0x1040440

    invoke-virtual {p0, v6}, Lcom/android/internal/app/RingtonePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->setupAlert()V

    .line 245
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/RingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 168
    return-void

    .line 162
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 163
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v1, "RingtonePickerActivity"

    const-string v2, " IllegalArgumentException Error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
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
    .line 437
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 438
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 440
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 575
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 577
    .local v0, ret:Z
    const/16 v1, 0x13

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020019

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102001a

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/RingtonePickerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x102001b

    if-ne v1, v2, :cond_2

    .line 580
    :cond_0
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    const/16 v2, 0x12c

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 585
    :cond_1
    :goto_0
    return v0

    .line 581
    :cond_2
    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 582
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 443
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 511
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 512
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 513
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSDcardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDidRegister:Z

    .line 518
    :cond_0
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    const/4 v2, -0x1

    .line 273
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 276
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 281
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 286
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 290
    :cond_1
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v2, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 295
    :cond_2
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mTypes:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 296
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    const-string v1, "VZW default"

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePositionByTitle(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    .line 302
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 505
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 506
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 507
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 453
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 464
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 467
    :cond_2
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_3

    .line 469
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    goto :goto_0

    .line 474
    :cond_3
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_5

    .line 475
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_4

    .line 476
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 478
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 486
    .local v0, ringtone:Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 492
    :goto_1
    if-eqz v0, :cond_0

    .line 494
    const-string v1, "RingtonePickerActivity"

    const-string/jumbo v2, "setRingerMode() -  MODE_RING_PR"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setRingerMode(I)V

    .line 496
    invoke-virtual {v0}, Landroid/media/Ringtone;->setModeAfterPlayStop()V

    .line 499
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 489
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0       #ringtone:Landroid/media/Ringtone;
    goto :goto_1
.end method
