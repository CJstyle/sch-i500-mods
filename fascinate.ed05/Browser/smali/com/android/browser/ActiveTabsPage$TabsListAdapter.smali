.class Lcom/android/browser/ActiveTabsPage$TabsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ActiveTabsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabsListAdapter"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNotified:Z

.field private mReturnedCount:I

.field final synthetic this$0:Lcom/android/browser/ActiveTabsPage;


# direct methods
.method public constructor <init>(Lcom/android/browser/ActiveTabsPage;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mHandler:Landroid/os/Handler;

    .line 156
    return-void
.end method

.method static synthetic access$602(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    .line 161
    .local v0, count:I
    iget-boolean v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    if-eq v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyChange()V

    .line 163
    iget v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    .line 167
    :goto_0
    return v1

    .line 165
    :cond_0
    iput v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mReturnedCount:I

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mNotified:Z

    move v1, v0

    .line 167
    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 175
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 187
    iget-object v7, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v7}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v6

    .line 189
    .local v6, tabCount:I
    if-nez p2, :cond_0

    .line 190
    iget-object v7, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v7}, Lcom/android/browser/ActiveTabsPage;->access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030023

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 193
    :cond_0
    const v7, 0x7f0d007a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 194
    .local v3, screenView:Landroid/widget/ImageView;
    const v7, 0x7f0d007b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 196
    .local v0, close:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v7}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v5

    .line 197
    .local v5, tab:Lcom/android/browser/Tab;
    invoke-virtual {v5}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 199
    invoke-virtual {v5}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 201
    invoke-virtual {v5}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    .line 203
    .local v4, screenshot:Landroid/graphics/Picture;
    new-instance v2, Landroid/graphics/drawable/PictureDrawable;

    invoke-direct {v2, v4}, Landroid/graphics/drawable/PictureDrawable;-><init>(Landroid/graphics/Picture;)V

    .line 204
    .local v2, pd:Landroid/graphics/drawable/PictureDrawable;
    if-eqz v2, :cond_2

    .line 205
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    .end local v2           #pd:Landroid/graphics/drawable/PictureDrawable;
    .end local v4           #screenshot:Landroid/graphics/Picture;
    :cond_1
    :goto_0
    move v1, p1

    .line 216
    .local v1, closePosition:I
    new-instance v7, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;

    invoke-direct {v7, p0, v1, v6}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;-><init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;II)V

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-object p2

    .line 207
    .end local v1           #closePosition:I
    .restart local v2       #pd:Landroid/graphics/drawable/PictureDrawable;
    .restart local v4       #screenshot:Landroid/graphics/Picture;
    :cond_2
    const v7, 0x7f020001

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x2

    return v0
.end method

.method notifyChange()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$2;-><init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method
