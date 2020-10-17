.class Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder$StethoJsException;
.super Ljava/lang/Exception;
.source "JsRuntimeReplFactoryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/rhino/JsRuntimeReplFactoryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StethoJsException"
.end annotation


# direct methods
.method varargs constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "rootCause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 271
    array-length v0, p3

    if-nez v0, :cond_0

    .end local p2    # "format":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    return-void

    .line 271
    .restart local p2    # "format":Ljava/lang/String;
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method
