.class public Lcom/android/mms/data/ContactList;
.super Ljava/util/ArrayList;
.source "ContactList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/mms/data/Contact;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public static getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;
    .locals 6
    .parameter "spaceSepIds"
    .parameter "canBlock"

    .prologue
    .line 50
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 51
    .local v3, list:Lcom/android/mms/data/ContactList;
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->getAddresses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/RecipientIdCache$Entry;

    .line 52
    .local v1, entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 53
    iget-object v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->number:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 54
    .local v0, contact:Lcom/android/mms/data/Contact;
    iget-wide v4, v1, Lcom/android/mms/data/RecipientIdCache$Entry;->id:J

    invoke-virtual {v0, v4, v5}, Lcom/android/mms/data/Contact;->setRecipientId(J)V

    .line 55
    invoke-virtual {v3, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v1           #entry:Lcom/android/mms/data/RecipientIdCache$Entry;
    :cond_1
    return-object v3
.end method

.method public static getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;
    .locals 7
    .parameter "semiSepNumbers"
    .parameter "canBlock"
    .parameter "replaceNumber"

    .prologue
    .line 29
    new-instance v4, Lcom/android/mms/data/ContactList;

    invoke-direct {v4}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 31
    .local v4, list:Lcom/android/mms/data/ContactList;
    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v0, v2

    .line 34
    .local v5, number:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    invoke-static {v5, p1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 36
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {v1, v5}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 31
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    .end local v5           #number:Ljava/lang/String;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public containsEmail()Z
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 93
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const/4 v2, 0x1

    .line 97
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v7, 0x0

    .line 147
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/ContactList;

    move-object v4, v0

    .line 150
    .local v4, other:Lcom/android/mms/data/ContactList;
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->size()I

    move-result v6

    if-eq v5, v6, :cond_0

    move v5, v7

    .line 163
    .end local v4           #other:Lcom/android/mms/data/ContactList;
    :goto_0
    return v5

    .line 155
    .restart local v4       #other:Lcom/android/mms/data/ContactList;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 156
    .local v1, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v4, v1}, Lcom/android/mms/data/ContactList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 157
    goto :goto_0

    .line 161
    .end local v1           #c:Lcom/android/mms/data/Contact;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 162
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #other:Lcom/android/mms/data/ContactList;
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/ClassCastException;
    move v5, v7

    .line 163
    goto :goto_0
.end method

.method public formatNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "separator"

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 71
    .local v4, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 72
    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 73
    .local v0, c:Lcom/android/mms/data/Contact;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 75
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    invoke-static {p1, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumbers(Z)[Ljava/lang/String;
    .locals 5
    .parameter "scrubForMmsAddress"

    .prologue
    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 117
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, number:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 124
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 132
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #number:Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getPresenceResId()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 66
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/data/Contact;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getPresenceResId()I

    move-result v0

    goto :goto_0
.end method

.method public isPhoneNumber()Z
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 102
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const/4 v2, 0x1

    .line 106
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reloadContactList()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 140
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    goto :goto_0

    .line 142
    .end local v0           #c:Lcom/android/mms/data/Contact;
    :cond_0
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    const-string v0, ";"

    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
