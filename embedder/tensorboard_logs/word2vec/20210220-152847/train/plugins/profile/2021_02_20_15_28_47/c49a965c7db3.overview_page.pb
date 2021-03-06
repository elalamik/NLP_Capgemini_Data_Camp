?	?8?ߡ&C@?8?ߡ&C@!?8?ߡ&C@	<??O??<??O??!<??O??"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6?8?ߡ&C@??s|?.B@1???o???A?đ"???I??&?????Y?ѯ????*	T㥛Ġ]@2U
Iterator::Model::ParallelMapV2???v?
??!?i?p:@)???v?
??1?i?p:@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatOq??!?<´??8@)????V`??1ǀ?)4@:Preprocessing2F
Iterator::Model?ɩ?aj??!pF?<I?F@)?ND???1S#?|?2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateu?????! ?h??u5@)ǻ#c????1o?D?/Y*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice#????!?ߌ,y? @)#????1?ߌ,y? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipzZ?????!??iöhK@)??6?{?1b????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??	j?v?!I???@)??	j?v?1I???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap	?`??w??!"???cH8@)?$]3?fk?1	?`Yz?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 94.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9<??O??I/????X@Q>Q?x????Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??s|?.B@??s|?.B@!??s|?.B@      ??!       "	???o??????o???!???o???*      ??!       2	?đ"????đ"???!?đ"???:	??&???????&?????!??&?????B      ??!       J	?ѯ?????ѯ????!?ѯ????R      ??!       Z	?ѯ?????ѯ????!?ѯ????b      ??!       JGPUY<??O??b q/????X@y>Q?x?????"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??{p?0??!??{p?0??"=
sequential_176/dense_528/MatMulMatMuln?%?p??!???F??0"=
 sequential_176/dense_530/SoftmaxSoftmax?W?0VF??!?%?`YO??"=
sequential_176/dense_529/MatMulMatMul)?ђŜ?!`?????0"K
-gradient_tape/sequential_176/dense_529/MatMulMatMul??t'&???!?Uj?????0"=
sequential_176/dense_530/MatMulMatMul?q?ep-??!?,??k'??0"K
/gradient_tape/sequential_176/dense_529/MatMul_1MatMul?W??k??!??5$???"K
-gradient_tape/sequential_176/dense_528/MatMulMatMulWMUʖ?!?????
??0"K
/gradient_tape/sequential_176/dense_530/MatMul_1MatMul?&?Ц??!N??6U??"K
-gradient_tape/sequential_176/dense_530/MatMulMatMul#'??5??! 7kE????0Q      Y@Y[ZZZZZ6@ajiiiiiS@q??:?P@y??j????"?
both?Your program is POTENTIALLY input-bound because 94.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?3.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?66.3% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 