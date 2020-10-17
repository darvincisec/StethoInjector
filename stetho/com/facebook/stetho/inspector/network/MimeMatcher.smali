.class public Lcom/facebook/stetho/inspector/network/MimeMatcher;
.super Ljava/lang/Object;
.source "MimeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mRuleMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/stetho/inspector/network/MimeMatcher",
            "<TT;>.MimeMatcherRule;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    .local p0, "this":Lcom/facebook/stetho/inspector/network/MimeMatcher;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/network/MimeMatcher;->mRuleMap:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addRule(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ruleExpression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/facebook/stetho/inspector/network/MimeMatcher;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>;"
    .local p2, "resultIfMatched":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/MimeMatcher;->mRuleMap:Ljava/util/ArrayList;

    new-instance v1, Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;-><init>(Lcom/facebook/stetho/inspector/network/MimeMatcher;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lcom/facebook/stetho/inspector/network/MimeMatcher;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>;"
    iget-object v0, p0, Lcom/facebook/stetho/inspector/network/MimeMatcher;->mRuleMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    return-void
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "mimeT"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/facebook/stetho/inspector/network/MimeMatcher;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>;"
    iget-object v3, p0, Lcom/facebook/stetho/inspector/network/MimeMatcher;->mRuleMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 39
    .local v2, "ruleMapN":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 40
    iget-object v3, p0, Lcom/facebook/stetho/inspector/network/MimeMatcher;->mRuleMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;

    .line 41
    .local v1, "rule":Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>.MimeMatcherRule;"
    invoke-virtual {v1, p1}, Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;->getResultIfMatched()Ljava/lang/Object;

    move-result-object v3

    .line 45
    .end local v1    # "rule":Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>.MimeMatcherRule;"
    :goto_1
    return-object v3

    .line 39
    .restart local v1    # "rule":Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>.MimeMatcherRule;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "rule":Lcom/facebook/stetho/inspector/network/MimeMatcher$MimeMatcherRule;, "Lcom/facebook/stetho/inspector/network/MimeMatcher<TT;>.MimeMatcherRule;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
