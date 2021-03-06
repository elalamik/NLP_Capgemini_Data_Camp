?	?W?BD@?W?BD@!?W?BD@	%1?R????%1?R????!%1?R????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?W?BD@?]h??P?@1???zi
??A?Ɵ?lX??I-?\o??@Y??9"ߥ??*?V?W@)      =2U
Iterator::Model::ParallelMapV2?E??\??!`"??t??@)?E??\??1`"??t??@:Preprocessing2F
Iterator::Model?b?dU???!??8??9L@)??&N???1a???8@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatN??ĭ??!?b???(3@)??9z???1?_???/@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?//?>:??! }?58?E@)???Q??|?1좽i??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate'0??mP??!?????,@)?m?s{?1S??1?(@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice>?$@M-{?!?f2?@)>?$@M-{?1?f2?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor:[@h=|i?!Ǘ)MJ$
@):[@h=|i?1Ǘ)MJ$
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??$"????!?.#A?0@)???)g?1o?!??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 78.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?19.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9$1?R????I
?(iX@QD??
K??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?]h??P?@?]h??P?@!?]h??P?@      ??!       "	???zi
?????zi
??!???zi
??*      ??!       2	?Ɵ?lX???Ɵ?lX??!?Ɵ?lX??:	-?\o??@-?\o??@!-?\o??@B      ??!       J	??9"ߥ????9"ߥ??!??9"ߥ??R      ??!       Z	??9"ߥ????9"ߥ??!??9"ߥ??b      ??!       JGPUY$1?R????b q
?(iX@yD??
K???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsyg\?|??!yg\?|??"=
sequential_278/dense_834/MatMulMatMul??`E;??!aaRNP??0"=
 sequential_278/dense_836/SoftmaxSoftmaxvP?Ŗ%??!p+???"=
sequential_278/dense_835/MatMulMatMul??m??!?r?宕??0"-
IteratorGetNext/_1_Sendu??????!???5??"K
-gradient_tape/sequential_278/dense_835/MatMulMatMul?X??֑?!?O??z???0"=
sequential_278/dense_836/MatMulMatMul?>;X?u??!?iOٷ??0"K
-gradient_tape/sequential_278/dense_834/MatMulMatMulȥ??ʐ?!$~??????0"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam?)??4??!?[?????"K
/gradient_tape/sequential_278/dense_836/MatMul_1MatMulh՘ݒ??!Y?ϳe???Q      Y@Y??(??(.@a?뺮?:U@q/d?LkLJ@y?7??}???"?
both?Your program is POTENTIALLY input-bound because 78.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?19.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?52.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 