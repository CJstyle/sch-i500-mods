.class Lcom/android/browser/HistoryItem;
.super Lcom/android/browser/BookmarkItem;
.source "HistoryItem.java"


# static fields
.field private static final NO_PARENT_FOLDER:I


# instance fields
.field private mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mStar:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    .line 47
    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/android/browser/HistoryItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    .line 48
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 49
    new-instance v0, Lcom/android/browser/HistoryItem$1;

    invoke-direct {v0, p0}, Lcom/android/browser/HistoryItem$1;-><init>(Lcom/android/browser/HistoryItem;)V

    iput-object v0, p0, Lcom/android/browser/HistoryItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/HistoryItem;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/HistoryItem;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method copyTo(Lcom/android/browser/HistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 80
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mUrlText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mUrlText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/browser/HistoryItem;->setIsBookmark(Z)V

    .line 83
    iget-object v0, p1, Lcom/android/browser/HistoryItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method enableCheckBox(Z)V
    .locals 2
    .parameter "check"

    .prologue
    .line 97
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0
.end method

.method isBookmark()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method setIsBookmark(Z)V
    .locals 2
    .parameter "isBookmark"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/browser/HistoryItem;->mStar:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/browser/HistoryItem;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    return-void
.end method
