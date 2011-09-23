.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;->setSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final SPECIAL_CHARS:[C

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 617
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;->SPECIAL_CHARS:[C

    return-void

    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x2dt 0x0t
        0x2ft 0x0t
        0x28t 0x0t
        0x29t 0x0t
    .end array-data
.end method

.method private isValid(C)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;->SPECIAL_CHARS:[C

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 621
    .local v1, character:C
    if-ne p1, v1, :cond_0

    const/4 v4, 0x1

    .line 623
    .end local v1           #character:C
    :goto_1
    return v4

    .line 620
    .restart local v1       #character:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 623
    .end local v1           #character:C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v1, 0x0

    .line 629
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 634
    :goto_0
    return-object v0

    .line 631
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$2;->isValid(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move-object v0, p1

    .line 633
    goto :goto_0

    .line 634
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method
