.class public Lcom/android/browser/ActiveTabsPage;
.super Landroid/widget/LinearLayout;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;,
        Lcom/android/browser/ActiveTabsPage$TabsListAdapter;,
        Lcom/android/browser/ActiveTabsPage$CloseHolder;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

.field private final mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private final mControl:Lcom/android/browser/TabControl;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

.field private final mNewWindowView:Landroid/widget/ImageView;

.field private final mTitleView:Landroid/widget/TextView;

.field private final mUrlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V
    .locals 2
    .parameter "context"
    .parameter "control"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 52
    iput-object p2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    .line 54
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    const v0, 0x7f0d0002

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    .line 56
    const/high16 v0, 0x7f0d

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mTitleView:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0d0001

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mUrlView:Landroid/widget/TextView;

    .line 59
    new-instance v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-direct {v0, p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    .line 60
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 62
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    invoke-virtual {p2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setSelection(I)V

    .line 64
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$1;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$1;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$2;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    new-instance v1, Lcom/android/browser/ActiveTabsPage$3;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$3;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mUrlView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getGallerySelection()I
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, selection:I
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    invoke-virtual {v1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->getSelectedItemPosition()I

    move-result v0

    .line 119
    :cond_0
    return v0
.end method

.method public setGallerySelection(I)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    invoke-virtual {v0, p1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setSelection(I)V

    .line 125
    :cond_0
    return-void
.end method
