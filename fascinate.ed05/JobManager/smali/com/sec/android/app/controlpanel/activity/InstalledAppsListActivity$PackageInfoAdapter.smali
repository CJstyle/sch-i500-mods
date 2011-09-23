.class Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "InstalledAppsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInfoAdapter"
.end annotation


# instance fields
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

.field final synthetic this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
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
    .line 136
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    .line 137
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 190
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter$1;-><init>(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 138
    iput-object p3, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;

    invoke-direct {v1}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    return-void
.end method


# virtual methods
.method public getApplicationInfo(I)Lcom/sec/android/app/controlpanel/PackageInfoItem;
    .locals 2
    .parameter "position"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 156
    .local v0, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 160
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    move-object v1, p0

    goto :goto_0
.end method

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
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    const-wide/16 v3, -0x1

    .line 164
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 165
    .local v1, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    move-wide v2, v3

    .line 174
    :goto_0
    return-wide v2

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 171
    .local v0, aInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-nez v0, :cond_2

    move-wide v2, v3

    .line 172
    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getId()I

    move-result v2

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 199
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt p1, v5, :cond_0

    move-object v5, v7

    .line 243
    :goto_0
    return-object v5

    .line 204
    :cond_0
    if-nez p2, :cond_3

    .line 205
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-static {v5}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->access$200(Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000b

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 206
    new-instance v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;

    invoke-direct {v0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;-><init>()V

    .line 207
    .local v0, holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;
    const v5, 0x7f070011

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->layout:Landroid/widget/LinearLayout;

    .line 208
    const v5, 0x7f070013

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 209
    const v5, 0x7f070012

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 210
    const v5, 0x7f070014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    .line 211
    const v5, 0x7f070016

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/controlpanel/PackageInfoItem;

    .line 219
    .local v1, pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->isCanKilled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 221
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    :goto_2
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v2

    .line 228
    .local v2, size:J
    const-string v4, ""

    .line 229
    .local v4, sizeString:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 230
    iget-object v5, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->this$0:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;

    invoke-virtual {v5}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getCodeDataSize()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 232
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_5

    .line 233
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_3
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appDetail:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 240
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    iget-object v6, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .end local v2           #size:J
    .end local v4           #sizeString:Ljava/lang/String;
    :cond_2
    move-object v5, p2

    .line 243
    goto/16 :goto_0

    .line 214
    .end local v0           #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;
    .end local v1           #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;

    .restart local v0       #holder:Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;
    goto :goto_1

    .line 223
    .restart local v1       #pkgInfo:Lcom/sec/android/app/controlpanel/PackageInfoItem;
    :cond_4
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->button:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 235
    .restart local v2       #size:J
    .restart local v4       #sizeString:Ljava/lang/String;
    :cond_5
    iget-object v5, v0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/PackageInfoItem;->getAppName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 152
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
    .line 182
    .local p1, l:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/controlpanel/PackageInfoItem;>;"
    if-nez p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->sort()V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/activity/InstalledAppsListActivity$PackageInfoAdapter;->mAppList:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;

    invoke-direct {v1}, Lcom/sec/android/app/controlpanel/activity/comparator/PackageSizeComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 248
    return-void
.end method
