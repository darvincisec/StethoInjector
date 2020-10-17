.class Lcom/facebook/stetho/inspector/protocol/module/Runtime$1$1;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/console/RuntimeRepl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/stetho/inspector/protocol/module/Runtime$1;->newInstance()Lcom/facebook/stetho/inspector/console/RuntimeRepl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/stetho/inspector/protocol/module/Runtime$1;


# direct methods
.method constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/Runtime$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/facebook/stetho/inspector/protocol/module/Runtime$1;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/Runtime$1$1;->this$1:Lcom/facebook/stetho/inspector/protocol/module/Runtime$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    const-string/jumbo v0, "Not supported with legacy Runtime module"

    return-object v0
.end method
