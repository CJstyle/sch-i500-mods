.class Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;
.super Ljava/lang/Object;
.source "PhoneDisambigDialog.java"

# interfaces
.implements Lcom/sec/android/app/dialertab/util/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/dialertab/util/Collapser$Collapsible",
        "<",
        "Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field id:J

.field phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "newPhoneNumber"
    .parameter "newId"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->this$0:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    .line 143
    iput-wide p3, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->id:J

    .line 144
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;)Z
    .locals 1
    .parameter "phoneItem"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->shouldCollapseWith(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->collapseWith(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public shouldCollapseWith(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;)Z
    .locals 3
    .parameter "phoneItem"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->this$0:Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;->access$000(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->shouldCollapseWith(Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/dialertab/util/PhoneDisambigDialog$PhoneItem;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method
