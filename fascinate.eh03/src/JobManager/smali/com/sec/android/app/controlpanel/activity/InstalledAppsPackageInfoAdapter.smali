.class public Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstalledAppsPackageInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    }
.end annotation


# instance fields
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

.field private scrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->DBG:Z

    .line 31
    const-string v0, "InstalledAppsPackageInfoAdapter"

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->TAG:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 52
    return-void
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
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

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

.method public getScrollState()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->scrollState:I

    return v0
.end method

.method public getSortOrder()I
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "installAppList_sort_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/controlpanel/Utils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 88
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt p1, v6, :cond_0

    move-object v6, v8

    .line 155
    :goto_0
    return-object v6

    .line 93
    :cond_0
    if-nez p2, :cond_3

    .line 94
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03000b

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;-><init>()V

    .line 96
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    const v6, 0x7f070013

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 97
    const v6, 0x7f070012

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 98
    const v6, 0x7f070014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 99
    const v6, 0x7f070016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    .line 100
    const v6, 0x7f070017

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    .line 101
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const v7, 0x7f060006

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 108
    .local v2, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v2, :cond_2

    .line 110
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 116
    :goto_2
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v3

    .line 118
    .local v3, size:J
    const-string v5, ""

    .line 119
    .local v5, sizeString:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    .line 120
    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 122
    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_5

    .line 123
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_3
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const/4 v1, 0x0

    .line 134
    .local v1, installLocation:Ljava/lang/String;
    const-string v1, ""

    .line 137
    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getStoredExternalStorage()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 148
    :goto_4
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setFocusable(Z)V

    .line 149
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setClickable(Z)V

    .line 150
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 151
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v7, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v1           #installLocation:Ljava/lang/String;
    .end local v3           #size:J
    .end local v5           #sizeString:Ljava/lang/String;
    :cond_2
    move-object v6, p2

    .line 155
    goto/16 :goto_0

    .line 104
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    .end local v2           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;
    goto :goto_1

    .line 113
    .restart local v2       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_4
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->button:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 125
    .restart local v3       #size:J
    .restart local v5       #sizeString:Ljava/lang/String;
    :cond_5
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 139
    .restart local v1       #installLocation:Ljava/lang/String;
    :pswitch_0
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f060054

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 142
    :pswitch_1
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f060055

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 145
    :pswitch_2
    iget-object v6, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter$AppViewHolder;->installLocation:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f060056

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isButtonPressed()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->isButtonPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getScrollState()I

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public setButtonPressed(Z)V
    .locals 0
    .parameter "buttonPressed"

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->buttonPressed:Z

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
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 77
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    .line 81
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 85
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 163
    iput p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->scrollState:I

    .line 164
    return-void
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "order"

    .prologue
    .line 197
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mContext:Landroid/content/Context;

    const-string v1, "installAppList_sort_order"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/controlpanel/Utils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public sort()V
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->getSortOrder()I

    move-result v1

    .line 184
    .local v1, sortOrder:I
    if-nez v1, :cond_1

    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/AlphaComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 192
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "InstalledAppsPackageInfoAdapter"

    const-string v3, "sort() exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 189
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsPackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;

    invoke-direct {v3}, Lcom/sec/android/app/controlpanel/activity/comparator/InstalledTimeComparator;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
