.class Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInfoAdapter"
.end annotation


# static fields
.field static final SORT_ORDER_ALPHABET:I = 0x3

.field static final SORT_ORDER_CPU_USEAGE:I = 0x1

.field static final SORT_ORDER_MEM_USEAGE:I = 0x2

.field static final SORT_ORDER_NONE:I


# instance fields
.field final CPU_1ST_THRESH_HOLD:I

.field final CPU_2ND_THRESH_HOLD:I

.field private buttonPressed:Z

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field mButtonClickListener:Landroid/view/View$OnClickListener;

.field mButtonTouchListener:Landroid/view/View$OnTouchListener;

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    .line 322
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 316
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->CPU_1ST_THRESH_HOLD:I

    .line 317
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->CPU_2ND_THRESH_HOLD:I

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->buttonPressed:Z

    .line 368
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$1;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter$2;-><init>(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 323
    iput-object p3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 324
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->sort()V

    .line 325
    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->setSortOrder(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->sort()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->buttonPressed:Z

    return p1
.end method

.method private getDetailString(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Ljava/lang/String;
    .locals 9
    .parameter "p"

    .prologue
    const-string v8, ": "

    const-string v7, ""

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuRateFormatted()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, cpu:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsageString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, mem:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v3

    .line 406
    .local v3, memValue:J
    const-string v5, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 407
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_0
    const-string v5, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const v6, 0x7f060013

    invoke-virtual {v5, v6}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private setSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 505
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const-string v1, "sort_order"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 507
    return-void
.end method

.method private sort()V
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    monitor-enter v0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getSortOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    :cond_0
    :goto_0
    monitor-exit v0

    .line 502
    return-void

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getSortOrder()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 498
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getSortOrder()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;

    invoke-direct {v2}, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getBaseAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 347
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 348
    :cond_0
    const-wide/16 v1, -0x1

    .line 354
    :goto_0
    return-wide v1

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 352
    .local v0, aInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 354
    :cond_2
    int-to-long v1, p1

    goto :goto_0
.end method

.method public getPackageInfoItem(I)Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 340
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 343
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    const-string v1, "sort_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f020013

    const v5, 0x2050001

    const/4 v4, 0x1

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    move-object v2, v7

    .line 478
    :goto_0
    return-object v2

    .line 427
    :cond_0
    if-nez p2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->access$900(Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000a

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 429
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;-><init>()V

    .line 430
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;
    const v2, 0x7f070011

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 431
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 433
    const v2, 0x7f070013

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 434
    const v2, 0x7f070012

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 435
    const v2, 0x7f070014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 436
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetailColor:Landroid/content/res/ColorStateList;

    .line 437
    const v2, 0x7f070015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->taskDrawable:Landroid/graphics/drawable/Drawable;

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->serviceDrawable:Landroid/graphics/drawable/Drawable;

    .line 440
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 444
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 446
    .local v1, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v1, :cond_1

    .line 448
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 449
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 454
    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v2

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 455
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 457
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 468
    :goto_3
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 472
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->getDetailString(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setId(I)V

    .line 475
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    move-object v2, p2

    .line 478
    goto/16 :goto_0

    .line 442
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;
    .end local v1           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;
    goto :goto_1

    .line 451
    .restart local v1       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 458
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 459
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 460
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 461
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 463
    :cond_5
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->appDetailColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 464
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 465
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_3
.end method

.method public isButtonPressed()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->buttonPressed:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->buttonPressed:Z

    if-nez v0, :cond_0

    .line 488
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 490
    :cond_0
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/controlpanel/PackageInfoItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 363
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->sort()V

    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsListActivity$PackageInfoAdapter;->notifyDataSetChanged()V

    .line 366
    return-void
.end method
