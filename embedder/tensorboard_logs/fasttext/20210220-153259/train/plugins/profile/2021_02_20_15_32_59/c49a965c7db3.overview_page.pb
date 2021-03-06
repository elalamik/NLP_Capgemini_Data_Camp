?	t@???;@t@???;@!t@???;@	-???<???-???<???!-???<???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6t@???;@?E;??9@1?v5y???A?????Z??I????????Y??p?????*	??~j?`@2F
Iterator::Model??=?$@??!?8???#J@)?LM?7???1n?U?0?:@:Preprocessing2U
Iterator::Model::ParallelMapV2b.?ܠ?!X?H??9@)b.?ܠ?1X?H??9@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateT?????!怾???4@)??LM?7??1??
?.?.@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat????y??!Fk?J|/@)??wcAa??1LG????(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip*Ŏơ~??!?0r?G@)?\??J??1????ѷ@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?	MK?}?! ??Zݑ@)?	MK?}?1 ??Zݑ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??{?_???!vZ?1H9@)g|_\??v?1??o??J@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor߇??(_p?!??xp??@)߇??(_p?1??xp??@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9-???<???I???m-pX@Q|?o_U???Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?E;??9@?E;??9@!?E;??9@      ??!       "	?v5y????v5y???!?v5y???*      ??!       2	?????Z???????Z??!?????Z??:	????????????????!????????B      ??!       J	??p???????p?????!??p?????R      ??!       Z	??p???????p?????!??p?????b      ??!       JGPUY-???<???b q???m-pX@y|?o_U????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits+??p??!+??p??"=
 sequential_192/dense_578/SoftmaxSoftmaxl?????!?L@???"=
sequential_192/dense_576/MatMulMatMul????ޘ?!???G??0"K
/gradient_tape/sequential_192/dense_577/MatMul_1MatMul?Jˊ???!?o?Z6???"K
-gradient_tape/sequential_192/dense_576/MatMulMatMul?Ν)?m??!?LJ?0??0"K
/gradient_tape/sequential_192/dense_578/MatMul_1MatMul??????!?I?ҁ??"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam!8?'ۓ?!??[w????"=
sequential_192/dense_577/MatMulMatMul@????ݒ?!?e
?b???0"K
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdamr??j???!}??y??"b
?sequential_192/dropout_192/dropout/random_uniform/RandomUniformRandomUniformC?bM???!L?[=???Q      Y@Y[ZZZZZ6@ajiiiiiS@q?l???J@yW?@.??"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?53.4% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 