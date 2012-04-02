.class public Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
.super Landroid/widget/TextView;
.source "DioCandidateTextView.java"


# instance fields
.field private mIndex:I

.field private mSuggestion:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mIndex:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mSuggestion:Ljava/lang/CharSequence;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mIndex:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mSuggestion:Ljava/lang/CharSequence;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mIndex:I

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mSuggestion:Ljava/lang/CharSequence;

    .line 26
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mIndex:I

    return v0
.end method

.method public getSuggestion()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mSuggestion:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "text"
    .parameter "suggestion"
    .parameter "index"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iput-object p2, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mSuggestion:Ljava/lang/CharSequence;

    .line 37
    iput p3, p0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->mIndex:I

    .line 38
    return-void
.end method
