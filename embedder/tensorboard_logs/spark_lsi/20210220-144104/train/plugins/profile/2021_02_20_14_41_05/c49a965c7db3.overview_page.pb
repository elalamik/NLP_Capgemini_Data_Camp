?	˂???*?@˂???*?@!˂???*?@	? N????? N????!? N????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6˂???*?@*??Y?^<@1x|{נ/??A??f????I$bJ$????Y]p????*	ףp=
?S@2U
Iterator::Model::ParallelMapV2?7j??{??!G????B@)?7j??{??1G????B@:Preprocessing2F
Iterator::Modelڎ?????!?i~??K@)????6??1NU`?1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?@d?&ޑ?!1????5@)?N?o+??1??@jJ?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice|~!<z?!??s? @)|~!<z?1??s? @:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?E???Ԉ?!??VG?.@)=???mw?1X?a?	?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip"?aK????!??9?F@)bMeQ?Eq?1CP??8@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???$xCj?!4?=?D"@)???$xCj?14?=?D"@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???;??!?:???2@)A)Z??e?1?l????
@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9? N????Ii?}4?X@QX<?S@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	*??Y?^<@*??Y?^<@!*??Y?^<@      ??!       "	x|{נ/??x|{נ/??!x|{נ/??*      ??!       2	??f??????f????!??f????:	$bJ$????$bJ$????!$bJ$????B      ??!       J	]p????]p????!]p????R      ??!       Z	]p????]p????!]p????b      ??!       JGPUY? N????b qi?}4?X@yX<?S@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?uf???!?uf???"-
IteratorGetNext/_1_SendEd?첉??!??X}#??";
sequential_22/dense_66/MatMulMatMul??eQQ??!B7???7??0"I
+gradient_tape/sequential_22/dense_66/MatMulMatMul ??$??!?(?l???0";
sequential_22/dense_68/SoftmaxSoftmax?"OO???!W?V???";
sequential_22/dense_67/MatMulMatMul3?.MM??!O?X= ??0"I
+gradient_tape/sequential_22/dense_67/MatMulMatMul{8??????!?E?/(??0"I
-gradient_tape/sequential_22/dense_68/MatMul_1MatMul??tw#??!5X?^g:??"I
-gradient_tape/sequential_22/dense_67/MatMul_1MatMul??ݳ?x??!TE{-6??";
sequential_22/dense_68/MatMulMatMul?T??;??!?o??0??0Q      Y@Y??(??(.@a?뺮?:U@q&M?xG@y???No??"?
both?Your program is POTENTIALLY input-bound because 91.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?46.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 