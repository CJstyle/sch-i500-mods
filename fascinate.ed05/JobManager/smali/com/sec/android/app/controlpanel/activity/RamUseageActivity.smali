.class public Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;
.super Landroid/app/Activity;
.source "RamUseageActivity.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/activity/ControlPanelActivityImpl;


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUGGABLE:Z = false

.field static final TAG:Ljava/lang/String; = "RamUseageActivity"


# instance fields
.field private final DBG:Z

.field clear_button:Landroid/widget/Button;

.field clear_button_level1:Landroid/widget/ToggleButton;

.field clear_button_level2:Landroid/widget/ToggleButton;

.field clear_level:Landroid/widget/ProgressBar;

.field clear_text:Landroid/widget/TextView;

.field level:I

.field mMemGraph:Landroid/widget/ProgressBar;

.field mMemoryAvailable:Landroid/widget/TextView;

.field private mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

.field mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->DEBUGGABLE:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->DBG:Z

    .line 36
    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->level:I

    .line 108
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$4;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->requestWindowFeature(I)Z

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mPkgInfo:Lcom/sec/android/app/controlpanel/PackageInfo;

    .line 48
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryAvailable:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemGraph:Landroid/widget/ProgressBar;

    .line 50
    const v0, 0x7f070023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_text:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_level:Landroid/widget/ProgressBar;

    .line 53
    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level1:Landroid/widget/ToggleButton;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level1:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level2:Landroid/widget/ToggleButton;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->clear_button_level2:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity$3;-><init>(Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->unregisterObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->mMemoryObserver:Lcom/sec/android/app/controlpanel/Observer;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/controlpanel/MemoryInfo;->registerObserver(Lcom/sec/android/app/controlpanel/Observer;)V

    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RamUseageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/MemoryInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/MemoryInfo;->refresh()V

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 129
    return-void
.end method
