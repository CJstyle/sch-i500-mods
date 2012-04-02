.class Lcom/sec/android/inputmethod/axt9/AxT9Keyboard$AxT9Key;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "AxT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AxT9Key"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 111
    return-void
.end method


# virtual methods
.method public isInside(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    sub-int v0, p2, v0

    :goto_0
    invoke-super {p0, p1, v0}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v0

    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method
