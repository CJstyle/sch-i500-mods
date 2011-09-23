.class Lcom/android/browser/BrowserRssLinksItem;
.super Landroid/widget/LinearLayout;
.source "BrowserRssLinksItem.java"


# instance fields
.field protected mDate:Ljava/lang/String;

.field protected mDateText:Landroid/widget/TextView;

.field protected mImageView:Landroid/widget/ImageView;

.field private mListener:Landroid/view/View$OnClickListener;

.field protected mTextView:Landroid/widget/TextView;

.field mUpdateClickListener:Landroid/view/View$OnClickListener;

.field protected mUrl:Ljava/lang/String;

.field protected mUrlText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f03001d

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v1, 0x7f0d0005

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserRssLinksItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/BrowserRssLinksItem;->mTextView:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0d0060

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserRssLinksItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrlText:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d0004

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserRssLinksItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/browser/BrowserRssLinksItem;->mImageView:Landroid/widget/ImageView;

    .line 65
    return-void
.end method


# virtual methods
.method getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNameTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method setDate(Ljava/lang/String;)V
    .locals 1
    .parameter "date"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iput-object p1, p0, Lcom/android/browser/BrowserRssLinksItem;->mDate:Ljava/lang/String;

    .line 125
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iput-object p1, p0, Lcom/android/browser/BrowserRssLinksItem;->mUrl:Ljava/lang/String;

    .line 120
    return-void
.end method
