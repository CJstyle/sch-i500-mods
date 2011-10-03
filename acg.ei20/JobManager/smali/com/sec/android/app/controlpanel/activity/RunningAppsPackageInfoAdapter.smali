.class public Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    }
.end annotation


# instance fields
.field final CPU_1ST_THRESH_HOLD:I

.field final CPU_2ND_THRESH_HOLD:I

.field private final DBG:Z

.field private final TAG:Ljava/lang/String;

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

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->DBG:Z

    .line 30
    const-string v0, "RunningAppsPackageInfoAdapter"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->TAG:Ljava/lang/String;

    .line 38
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->CPU_1ST_THRESH_HOLD:I

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->CPU_2ND_THRESH_HOLD:I

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
.end method

.method private getDetailString(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Ljava/lang/String;
    .locals 9
    .parameter "p"

    .prologue
    const-string v8, ": "

    const-string v7, ""

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuRateFormatted()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, cpu:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsageString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, mem:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getMemUsage()J

    move-result-wide v3

    .line 92
    .local v3, memValue:J
    const-string v5, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    .line 93
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    const-string v5, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f060013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
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
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "runningAppList_sort_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f020010

    const v4, 0x2050001

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    move-object v2, v8

    .line 163
    :goto_0
    return-object v2

    .line 110
    :cond_0
    if-nez p2, :cond_2

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    invoke-virtual {v2, v3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 112
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;-><init>()V

    .line 113
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    const v2, 0x7f070011

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->itemLayout:Landroid/widget/LinearLayout;

    .line 114
    const v2, 0x7f070013

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f070012

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 116
    const v2, 0x7f070014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 117
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetailColor:Landroid/content/res/ColorStateList;

    .line 118
    const v2, 0x7f070015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->taskDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->serviceDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 126
    .local v1, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 128
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 132
    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v2

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 133
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const v3, 0x7f020012

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 135
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x205

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 145
    :goto_3
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_6

    .line 149
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    :goto_4
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 156
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getDetailString(Lcom/sec/android/app/controlpanel/PackageInfoItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 158
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    .line 159
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 160
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    move-object v2, p2

    .line 163
    goto/16 :goto_0

    .line 123
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    .end local v1           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;
    goto/16 :goto_1

    .line 130
    .restart local v1       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 136
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCpuUsage()F

    move-result v2

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 137
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 139
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_3

    .line 141
    :cond_5
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appDetailColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 143
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_3

    .line 152
    :cond_6
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, v0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_4
.end method

.method public isButtonPressed()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->isButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public setButtonPressed(Z)V
    .locals 0
    .parameter "buttonPressed"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->buttonPressed:Z

    .line 172
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
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
    .line 76
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 85
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 199
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "runningAppList_sort_order"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method public sort()V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 184
    .local v1, sortOrder:I
    if-nez v1, :cond_1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/ProcessStartTimeComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/ProcessStartTimeComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/CpuUsageComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 194
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RunningAppsPackageInfoAdapter"

    const-string v3, "sort() exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/MemoryUsageComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 190
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/RunningAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
