.class Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;
.super Ljava/lang/Object;
.source "PukUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchInput"
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/TextView;

.field private mEight:Landroid/widget/TextView;

.field private mFive:Landroid/widget/TextView;

.field private mFour:Landroid/widget/TextView;

.field private mNine:Landroid/widget/TextView;

.field private mOne:Landroid/widget/TextView;

.field private mSeven:Landroid/widget/TextView;

.field private mSix:Landroid/widget/TextView;

.field private mThree:Landroid/widget/TextView;

.field private mTwo:Landroid/widget/TextView;

.field private mZero:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    const v0, 0x1020228

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 469
    const v0, 0x102021f

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 470
    const v0, 0x1020220

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 471
    const v0, 0x1020221

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 472
    const v0, 0x1020222

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 473
    const v0, 0x1020223

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 474
    const v0, 0x1020224

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 475
    const v0, 0x1020225

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 476
    const v0, 0x1020226

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 477
    const v0, 0x1020227

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 478
    const v0, 0x1020185

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 519
    const/4 v0, -0x1

    .line 520
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 521
    const/4 v0, 0x0

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 523
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 525
    const/4 v0, 0x2

    goto :goto_0

    .line 526
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 527
    const/4 v0, 0x3

    goto :goto_0

    .line 528
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 529
    const/4 v0, 0x4

    goto :goto_0

    .line 530
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 531
    const/4 v0, 0x5

    goto :goto_0

    .line 532
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 533
    const/4 v0, 0x6

    goto :goto_0

    .line 534
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 535
    const/4 v0, 0x7

    goto :goto_0

    .line 536
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 537
    const/16 v0, 0x8

    goto :goto_0

    .line 538
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 539
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 512
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 514
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1100(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V

    goto :goto_0
.end method
