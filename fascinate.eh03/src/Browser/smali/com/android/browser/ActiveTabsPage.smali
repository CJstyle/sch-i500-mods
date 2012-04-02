.class public Lcom/android/browser/ActiveTabsPage;
.super Landroid/widget/LinearLayout;
.source "ActiveTabsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;,
        Lcom/android/browser/ActiveTabsPage$TabsListAdapter;
    }
.end annotation


# instance fields
.field private final INDICATOR_ICON_HEIGHT:I

.field private final INDICATOR_ICON_WIDTH:I

.field private final mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

.field private final mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private final mControl:Lcom/android/browser/TabControl;

.field private final mFactory:Landroid/view/LayoutInflater;

.field private final mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

.field private final mNewWindowView:Landroid/view/View;

.field private final mPageCount:I

.field private final mPageIndicatorView:Landroid/widget/LinearLayout;

.field private final mPageTextView:[Landroid/widget/TextView;

.field private final mTitleView:Landroid/widget/TextView;

.field private final mUrlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V
    .locals 5
    .parameter "context"
    .parameter "control"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x12

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    iput v3, p0, Lcom/android/browser/ActiveTabsPage;->INDICATOR_ICON_WIDTH:I

    .line 60
    iput v3, p0, Lcom/android/browser/ActiveTabsPage;->INDICATOR_ICON_HEIGHT:I

    .line 65
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 66
    iput-object p2, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    .line 68
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 71
    const/high16 v1, 0x7f0d

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorView:Landroid/widget/LinearLayout;

    .line 72
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    iput v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageCount:I

    .line 73
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageCount:I

    new-array v1, v1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    .line 74
    const/4 v0, 0x0

    .local v0, page:I
    :goto_0
    iget v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageCount:I

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 77
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 79
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 80
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHeight(I)V

    .line 81
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const v1, 0x7f0d0001

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    .line 85
    const v1, 0x7f0d0002

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mTitleView:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0d0003

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mUrlView:Landroid/widget/TextView;

    .line 88
    new-instance v1, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-direct {v1, p0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    .line 89
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    iget-object v2, p0, Lcom/android/browser/ActiveTabsPage;->mAdapter:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    invoke-virtual {p2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setSelection(I)V

    .line 93
    const v1, 0x7f0d0005

    invoke-virtual {p0, v1}, Lcom/android/browser/ActiveTabsPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/view/View;

    .line 95
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/view/View;

    new-instance v2, Lcom/android/browser/ActiveTabsPage$1;

    invoke-direct {v2, p0}, Lcom/android/browser/ActiveTabsPage$1;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 106
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    new-instance v2, Lcom/android/browser/ActiveTabsPage$2;

    invoke-direct {v2, p0}, Lcom/android/browser/ActiveTabsPage$2;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    new-instance v2, Lcom/android/browser/ActiveTabsPage$3;

    invoke-direct {v2, p0}, Lcom/android/browser/ActiveTabsPage$3;-><init>(Lcom/android/browser/ActiveTabsPage;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/BrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/ActiveTabsPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageIndicatorView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/ActiveTabsPage;)[Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mPageTextView:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/ActiveTabsPage;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mUrlView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/ActiveTabsPage;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/ActiveTabsPage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mNewWindowView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getGallerySelection()I
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, selection:I
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    invoke-virtual {v1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->getSelectedItemPosition()I

    move-result v0

    .line 174
    :cond_0
    return v0
.end method

.method public setGallerySelection(I)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage;->mGalleryView:Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;

    invoke-virtual {v0, p1}, Lcom/android/browser/ActiveTabsPage$ActiveTabsGallery;->setSelection(I)V

    .line 180
    :cond_0
    return-void
.end method
