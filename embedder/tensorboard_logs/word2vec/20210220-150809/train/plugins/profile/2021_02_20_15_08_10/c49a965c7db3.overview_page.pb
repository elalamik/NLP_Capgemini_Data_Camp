?	??Ft?:@??Ft?:@!??Ft?:@	?I? ?????I? ????!?I? ????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??Ft?:@???[?7@1vT5A?}??A???Fu:??I?D???\??Yd??ǚ??*	W-???V@2U
Iterator::Model::ParallelMapV2n??Ũ??!d!꫅=@)n??Ũ??1d!꫅=@:Preprocessing2F
Iterator::Model?)H4??!#????J@)??ʅʿ??1?J^H8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatm8,????!;Lg?/8@)s?SrN???1?U!?U!3@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?y9??c??!B?wXE*@)???d#y?1???S??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?jf-???!???%G@){??x?1ؽؽ@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?^?sa?w?!??h]<@)?^?sa?w?1??h]<@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?wak??r?!?ٳ7j9@)?wak??r?1?ٳ7j9@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?v??/??!??K&/@)???n-c?1?N5x@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?I? ????I:?Y?.aX@Q}הּ? @Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???[?7@???[?7@!???[?7@      ??!       "	vT5A?}??vT5A?}??!vT5A?}??*      ??!       2	???Fu:?????Fu:??!???Fu:??:	?D???\???D???\??!?D???\??B      ??!       J	d??ǚ??d??ǚ??!d??ǚ??R      ??!       Z	d??ǚ??d??ǚ??!d??ǚ??b      ??!       JGPUY?I? ????b q:?Y?.aX@y}הּ? @?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits1#???)??!1#???)??"=
sequential_112/dense_336/MatMulMatMul????+??!?a?)?t??0"=
 sequential_112/dense_338/SoftmaxSoftmax?7_eL??!?"?j'???"=
sequential_112/dense_337/MatMulMatMul?=LuDp??!z??+v??0"K
/gradient_tape/sequential_112/dense_338/MatMul_1MatMul?%?\?Й?!?H?7??"-
IteratorGetNext/_1_Send???%???!??2?????"=
sequential_112/dense_338/MatMulMatMul)???^??!S?r????0"K
-gradient_tape/sequential_112/dense_337/MatMulMatMull=??O??!q??}??0"K
-gradient_tape/sequential_112/dense_336/MatMulMatMul>?l?'??!?<M ????0"K
/gradient_tape/sequential_112/dense_337/MatMul_1MatMul??0^???!?G? ?\??Q      Y@Y[ZZZZZ6@ajiiiiiS@q??8?#?M@y?9??d??"?
both?Your program is POTENTIALLY input-bound because 91.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.6 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?59.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 