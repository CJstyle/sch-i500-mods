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
    .line 535
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    const v0, 0x102024e

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    .line 537
    const v0, 0x1020245

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    .line 538
    const v0, 0x1020246

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    .line 539
    const v0, 0x1020247

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    .line 540
    const v0, 0x1020248

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    .line 541
    const v0, 0x1020249

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    .line 542
    const v0, 0x102024a

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    .line 543
    const v0, 0x102024b

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    .line 544
    const v0, 0x102024c

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    .line 545
    const v0, 0x102024d

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    .line 546
    const v0, 0x10201a9

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 563
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;)V

    return-void
.end method

.method private checkDigit(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 593
    const/4 v0, -0x1

    .line 594
    .local v0, digit:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mZero:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 595
    const/4 v0, 0x0

    .line 615
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mOne:Landroid/widget/TextView;

    if-ne p1, v1, :cond_2

    .line 597
    const/4 v0, 0x1

    goto :goto_0

    .line 598
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mTwo:Landroid/widget/TextView;

    if-ne p1, v1, :cond_3

    .line 599
    const/4 v0, 0x2

    goto :goto_0

    .line 600
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mThree:Landroid/widget/TextView;

    if-ne p1, v1, :cond_4

    .line 601
    const/4 v0, 0x3

    goto :goto_0

    .line 602
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFour:Landroid/widget/TextView;

    if-ne p1, v1, :cond_5

    .line 603
    const/4 v0, 0x4

    goto :goto_0

    .line 604
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mFive:Landroid/widget/TextView;

    if-ne p1, v1, :cond_6

    .line 605
    const/4 v0, 0x5

    goto :goto_0

    .line 606
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSix:Landroid/widget/TextView;

    if-ne p1, v1, :cond_7

    .line 607
    const/4 v0, 0x6

    goto :goto_0

    .line 608
    :cond_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mSeven:Landroid/widget/TextView;

    if-ne p1, v1, :cond_8

    .line 609
    const/4 v0, 0x7

    goto :goto_0

    .line 610
    :cond_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mEight:Landroid/widget/TextView;

    if-ne p1, v1, :cond_9

    .line 611
    const/16 v0, 0x8

    goto :goto_0

    .line 612
    :cond_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mNine:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    .line 613
    const/16 v0, 0x9

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 585
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 587
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V

    goto :goto_0
.end method
